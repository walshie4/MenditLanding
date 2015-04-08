###
#HAML
###
set :haml, { :ugly => true, :format => :html5 }

###
# Page options, layouts, aliases and proxies
###
page "", :layout => "base"

# Development-specific configuration
configure :development do
  activate :livereload
  activate :directory_indexes
end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

set :build_dir, 'build'

activate :deploy do |deploy|#this will deploy to the 'gh-pages' branch of your repo
    deploy.method = :git
end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css
  # Minify Javascript on build
  activate :minify_javascript
  # Utilize gzip compression
  activate :gzip
  # Minify HTML on build
  activate :minify_html
  # Use directory indexes (no file extension in URL)
  activate :directory_indexes
end

