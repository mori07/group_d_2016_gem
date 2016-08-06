# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'group_d_2016_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "group_d_2016_gem"
  spec.version       = GroupD2016Gem::VERSION
  spec.authors       = ["mori07", "tako-t-t-1046", "FK001jp", "IshidaHIRO"]
  spec.email         = ["extend71@gmail.com"]

  spec.summary       = %q{This gem is sort module.}
  spec.description   = %q{This module can sort(BubbleSort, SelectSort, MergeSort, QuickSort). }

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-minitest"
end
