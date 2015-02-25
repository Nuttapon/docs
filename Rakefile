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
