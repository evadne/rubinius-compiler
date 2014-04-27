# coding: utf-8
require 'rubinius/toolset'
require './lib/rubinius/compiler/version'

Gem::Specification.new do |spec|
  spec.name          = "rubinius-compiler"
  spec.version       = Rubinius::ToolSets.current::ToolSet::Compiler::VERSION
  spec.authors       = ["Brian Shirai"]
  spec.email         = ["brixen@gmail.com"]
  spec.description   = %q{Rubinius bytecode compiler.}
  spec.summary       = %q{Rubinius bytecode compiler.}
  spec.homepage      = "https://github.com/rubinius/rubinius-compiler"
  spec.license       = "BSD"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "mspec", "~> 1.5"
  spec.add_development_dependency "rubinius-toolset", "~> 2.2"
  spec.add_development_dependency "rubinius-processor", "~> 2.0"
  spec.add_development_dependency "rubinius-ast", "~> 2.0"
  spec.add_development_dependency "rubinius-bridge", "~> 1.0"
  spec.add_development_dependency "redcard", "~> 1.0"
end
