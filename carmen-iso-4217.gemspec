# coding: utf-8
lib = File.expand_path('../lib/carmen', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'iso_4217/version'

Gem::Specification.new do |spec|
  spec.name          = 'carmen-iso-4217'
  spec.version       = Carmen::ISO4217::VERSION
  spec.authors       = ['Cyle']
  spec.email         = ['cylehunter33@gmail.com']
  spec.summary       = 'Adds ISO 4217 currency names to Carmen::Country'
  spec.description   = 'Adds ISO 4217 currency names to Carmen::Country'
  spec.homepage      = 'https://github.com/nozpheratu/carmen-iso-4217'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin/) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)/)
  spec.require_paths = ['lib']

  spec.add_dependency 'carmen'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  # spec.add_development_dependency 'geonames_api'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rspec'
end
