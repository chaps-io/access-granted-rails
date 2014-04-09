# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'access-granted/rails'
require 'access-granted/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "access-granted-rails"
  spec.version       = AccessGranted::Rails::VERSION
  spec.authors       = ["Piotrek Okoński"]
  spec.email         = ["piotrek@okonski.org"]
  spec.description   = %q{Role based authorization gem}
  spec.summary       = %q{Elegant whitelist and role based authorization with ability to prioritize roles.}
  spec.homepage      = "https://github.com/pokonski/access-granted-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rspec", "~> 2.14"

  spec.add_dependency "access-granted", "~> 0.1"
end
