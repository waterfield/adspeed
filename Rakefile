require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('adpseed', '1.0') do |p|
  p.description     = "Adspeed API"
  p.url             = "http://github.com/waterfield/adspeed"
  p.author          = "Waterfield Technologies"
  p.email           = "info@waterfieldtech.com"
  p.ignore_pattern  = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }