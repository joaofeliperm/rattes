lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rattes/version'

Gem::Specification.new do |spec|
  spec.name          = "rattes"
  spec.version       = Rattes::VERSION
  spec.authors       = ["Rodrigo Manhães"]
  spec.email         = ["rmanhaes@gmail.com"]
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'nokogiri'
  spec.add_dependency 'mongo'
  spec.add_dependency 'bson_ext'
  spec.add_dependency 'methodize'
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec', '~> 3.0.0'
  spec.add_development_dependency 'pry-rails'
  spec.add_development_dependency 'rb-readline'
end
