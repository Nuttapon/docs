require 'rack/rewrite'
use Rack::Rewrite do
   r301      '/v20140727',        '/v20140727/'
   r301      %r{/v20150715/(.*)}, '/$1'
end

$markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)

activate :directory_indexes
activate :syntax
activate :i18n
activate :asset_hash
activate :alias

activate :autoprefixer do
  config.ignore   = ["_normalize.css"]
end

set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, tables: true, with_toc_data: true

page "/v20140727/*", :layout => "layout_v20140727"

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

  def source_code(path, lang)
    highlight_syntax(partial(path).strip, lang)
  end

  def highlight_syntax(source, lang)
    Middleman::Syntax::Highlighter.highlight(source, lang).html_safe
  end
end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

configure :build do
  activate :minify_css
  activate :minify_javascript
end
