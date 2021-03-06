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

#page "/content-page*", :layout => "content-page"

# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# helpers do
#   def nav_active(page)
#     @page_id == page ? {:class => "Active"} : {}
#   end
# end

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Add page name as body class

#def page_classes
#  path = request.path_info.dup
#  path < < settings.index_file if path.match(%r{/$})
#  path = path.gsub(%r{^/}, '')

#  classes = []
#  parts = path.split('.')[0].split('/')
#  parts.each_with_index {|path, i| classes << parts.first(i+1).join('_')}

#  classes.join(' ')
#end

activate :directory_indexes

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'

set :haml, :format => :html5
set :relative_links, 'true'

configure :development do
  activate :livereload
end

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"

  # Pretty URLs

  # activate :directory_indexes

end
