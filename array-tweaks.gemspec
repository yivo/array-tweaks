# encoding: UTF-8
# frozen_string_literal: true

require File.expand_path("../lib/array-tweaks/version", __FILE__)

Gem::Specification.new do |s|
  s.name          = "array-tweaks"
  s.version       = ArrayTweaks::VERSION
  s.author        = "Yaroslav Konoplov"
  s.email         = "eahome00@gmail.com"
  s.summary       = "Utilities for Ruby's array."
  s.description   = "A gem extending Ruby's array with useful utilities."
  s.homepage      = "https://github.com/yivo/array-tweaks"
  s.license       = "MIT"
  s.files         = `git ls-files -z`.split("\x0")
  s.test_files    = `git ls-files -z -- {test,spec,features}/*`.split("\x0")
  s.require_paths = ["lib"]
  s.add_development_dependency "bundler", ">= 1.7.0", "< 3.0.0"
end
