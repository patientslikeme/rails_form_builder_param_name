# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_form_builder_param_name/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_form_builder_param_name"
  spec.version       = RailsFormBuilderParamName::VERSION
  spec.authors       = ["Nat Budin"]
  spec.email         = ["nbudin@patientslikeme.com"]

  spec.summary       = "Get the name of the form field you didn't generate"
  spec.description   = <<-DESC
  Adds a method to Rails helpers which returns the value of the name attribute on fields that the Rails form helpers 
  would hypothetically generate if you were to call them.
  DESC
  spec.homepage      = "https://github.com/patientslikeme/rails_form_builder_param_name"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "actionview", ">= 4.1.0"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "actionpack", ">= 4.1.0"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "pry"
end
