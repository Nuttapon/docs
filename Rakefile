def consecutive_sequence_in_word(word, min)
  (min..word.size).flat_map do |i|
    word.chars.each_cons(i).map(&:join)
  end
end

task :build do

  require 'fileutils'
  require "json"
  require "nokogiri"

  FileUtils.rm("source/index.json") if File.exist?("source/index.json")
  FileUtils.rm("build/index.json") if File.exist?("build/index.json")

  system "bin/middleman build"

  documents = {}
  index = {}

  Dir.glob("build/**/*.html") do |path|
    doc = Nokogiri::HTML(File.read(path))
    text = doc.css(".MainContent h1, .MainContent h2, .MainContent h3, .MainContent h4")
      .map(&:text).join(" ")
      .gsub("\n", " ")
      .gsub(/[ ]+/, " ")

    absolute_path = path.gsub(/^build/, "").gsub(/\/index.html$/, "")
    absolute_path = absolute_path == "" ? "/" : absolute_path

    documents[absolute_path] = { title: doc.title.gsub(/^Omise\: /, ""), content: text }

    words = text.downcase
      .gsub(/[^a-z0-9]+/, " ")
      .gsub("\n", " ")
      .gsub(/[ ]+/, " ")
      .split(" ")

    words.each do |word|
      if word.size > 3
        consecutive_sequence_in_word(word, 3).each do |sequence|
          index[sequence] ||= []
          index[sequence] << absolute_path
          index[sequence].uniq!
        end
      end
    end
  end

  File.open("build/index.json", "w+") do |file|
    file.puts({ index: index, documents: documents }.to_json)
  end

  File.open("source/index.json", "w+") do |file|
    file.puts({ index: index, documents: documents }.to_json)
  end

end

task :build_objects do
  require "json"
  require "open3"
  puts "Generating JSON objects".center(80, "=")
  puts "Make sure there is no error".center(80, " ")
  pkey = ENV["pkey"]
  skey = ENV["skey"]
  puts "ENV['pkey']          -> #{ENV['pkey'].nil? ? 'MISSING' : 'Success'}"
  puts "ENV['skey']          -> #{ENV['skey'].nil? ? 'MISSING' : 'Success'}"
  requests_path = "source/object_representations/requests/"
  responses = Hash.new({})
  Dir.glob("#{requests_path}*.sh").sort.each do |path|
    raw_response, error, status = Open3.capture3("#{File.read(path) % {
      token: responses["token"]["id"],
      customer: responses["customer"]["id"],
      card: responses["customer"]["default_card"],
      charge: responses["charge"]["id"],
      skey: skey,
      pkey: pkey,
    } }")
    response = JSON.parse(raw_response)
    path_length = path.length
    object_type = path[(requests_path.length+3)..(path_length-4)]
    if object_type == response["object"]
      puts "#{object_type.ljust(20)} -> Success"
    else
      puts "#{object_type.ljust(20)} -> ERROR! Check source/api/#{object_type}s/_response.json"
    end
    responses[object_type] = response
    File.open("source/api/#{object_type}s/_response.json", "w") do |file|
      file.puts(JSON.pretty_generate(response))
    end
  end
  puts "DONE".center(80, "=")
end
