activate :directory_indexes

activate :syntax

set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, tables: true, with_toc_data: true

configure :development do
  activate :livereload
end

helpers do
  def link_to_current(name, path, options = {})
    if current_page.url == "#{path}/".sub("//", "/")
      options[:class] = [options[:class], "Current"].compact.join(" ")
    end
    link_to name, path, options
  end
end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

configure :build do
  activate :minify_css
  activate :minify_javascript
end
