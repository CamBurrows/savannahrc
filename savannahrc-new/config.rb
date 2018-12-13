# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/


data.vehicles.vehicles.each do |vehicle|
  proxy "/vehicles/#{vehicle.photopath}/index.html","/vehicle-detail.html", :locals => {:year => vehicle.year, :make => vehicle.make, :model => vehicle.model, :current => vehicle.current, :description => vehicle.description, :engine => vehicle.engine, :transmission => vehicle.transmission, :exterior => vehicle.exterior, :interior => vehicle.interior, :body => vehicle.body, :rear_end_gear => vehicle.rear_end_gear, :vin => vehicle.vin, :photopath => vehicle.photopath, :misc => vehicle.misc, :vehicle => @vehicle}, :layout => "detail-page", :ignore => true
end
# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/


helpers do
  def site_image_url(image)
    "/images/site_assets/#{image}"
  end
  def vehicle_images(vehicle_name)
    "images/#{vehicle_name}/photos"
  end
  def vehicle_thumbs(vehicle_name)
    "images/#{vehicle_name}/thumbs"
  end
end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end

activate :directory_indexes

set :relative_links, true

Haml::TempleEngine.disable_option_validator!