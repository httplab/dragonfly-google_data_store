# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dragonfly/google_data_store/version'

Gem::Specification.new do |spec|
  spec.name          = "dragonfly-google_data_store"
  spec.version       = Dragonfly::GoogleDataStore::VERSION
  spec.authors       = ['Yury Kotov']
  spec.email         = ['non.gi.suong@ya.ru']
  spec.description   = %q{Google cloud data store for Dragonfly}
  spec.summary       = %q{Data store for storing Dragonfly content (e.g. images) on Google Cloud}
  spec.homepage      = "https://github.com/httplab/dragonfly-google_data_store"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'dragonfly', '~> 1.0'
  spec.add_runtime_dependency 'fog-google'
  spec.add_development_dependency 'rspec', '~> 2.0'
end
