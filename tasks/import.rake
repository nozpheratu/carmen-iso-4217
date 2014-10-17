require 'yaml'
require 'carmen'
require 'geonames_api'

YAML::ENGINE.yamler = 'psych'

def write(data)
  path = File.expand_path('../../locale/en/world.yml', __FILE__)
  File.open(path, 'w+') { |f| f << data.to_yaml }
end

task :import do
  puts 'Enter your GeoNames WebServices username:'
  name = $stdin.gets.chomp
  GeoNamesAPI.username = name if name.present?
  data = { 'en' => { 'world' => {} } }
  GeoNamesAPI::Country.all.each do |country|
    country_code = country.country_code.downcase
    data['en']['world'][country_code] ||= {}
    data['en']['world'][country_code]['currency_code'] = country.currency_code
  end
  write(data)
end
