$:.unshift File.expand_path('../lib', __FILE__)
require 'split_into/version'

Gem::Specification.new do |s|
  s.name        = 'split_into'
  s.version     = SplitInto::VERSION
  s.licenses    = ['BSD']
  s.summary     = "Split an integer into equally sized component integers"
  s.description = "SplitInto is a small API whose sole purpose is to split an integer into equal or roughly equal parts. This is useful when dealing with objects that are not well suited to being split into fractional parts."
  s.author      = "Farrel Lifson"
  s.email       = 'farrel.lifson@aimred.com'
  s.files       = %x{git ls-files}.split("\n")
  s.test_files    = %x{git ls-files -- {test,spec,features}/*}.split("\n")
  s.require_paths = ['lib']

  s.homepage    = 'https://www.aimred.com/projects/split_into'

  s.add_dependency 'simplecheck', '~> 2.0'
end

