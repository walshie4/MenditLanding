###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###
set :haml, { :ugly => false, :format => :html5 }

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end
page "index.html", :layout => :base

configure :development do
  activate :livereload
  activate :directory_indexes
end

activate :deploy do |deploy|
      deploy.method = :git
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript
  activate :gzip
  activate :minify_html
  activate :directory_indexes
  # Enable cache buster
  #activate :asset_hash

  # Use relative URLs
  #activate :relative_assets
end
