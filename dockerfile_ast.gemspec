# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dockerfile_ast/version'

Gem::Specification.new do |spec|
  spec.name          = "dockerfile_ast"
  spec.version       = DockerfileAst::VERSION
  spec.authors       = ["Jeremiah Hemphill"]
  spec.email         = ["jeremiah@cloudspace.com"]
  spec.summary       = %q{Convert a Dockerfile into a basic AST}
  spec.description   = %q{Parse a Dockerfile, the write the parsed data back to a file.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_dependency 'treetop'
end
