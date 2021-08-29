# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faraday'

Gem::Specification.new do |spec|
  spec.name          = "embedder"
  spec.version       = "0.0.0"
  spec.authors       = ["Ashish Malik"]
  spec.email         = 'nomail@example.com'

  spec.summary       = %q{embed and see}
  spec.description   = %q{embedder}
  spec.homepage      = "https://github.com/malikashish8/scripts/embedder"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'jekyll'
  spec.add_development_dependency "bundler", "~> 1.10"
end