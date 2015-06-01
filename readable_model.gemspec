# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'readable_model/version'

Gem::Specification.new do |spec|
  spec.name          = "readable_model"
  spec.version       = ReadableModel::VERSION
  spec.authors       = ["senthil"]
  spec.email         = ["rask.kumar@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org/"
  end

  spec.summary       = %q{Make Model as much as readable}
  spec.description   = %q{Make Model as much as readable}
  spec.homepage      = "https://github.com/senthil88/readable_model"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
