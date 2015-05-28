# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_reseed/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_reseed"
  spec.version       = RailsReseed::VERSION
  spec.authors       = ["Jaymie Jones"]
  spec.email         = ["jaymiejones86@gmail.com"]
  spec.summary       = %q{Implements a simple rails reseed rake task}
  spec.description   = %q{Implements a new rake task for rails applications that will drop the database, create it, migrate and then seed the clean database}
  spec.homepage      = "https://github.com/pixelstack/reseed"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
