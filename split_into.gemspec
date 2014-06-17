Gem::Specification.new do |s|
  s.name        = 'split_into'
  s.version     = '0.1'
  s.licenses    = ['BSD']
  s.summary     = "Split an integer into equally sized component integers"
  s.description = "Split an integer into  "
  s.author      = "Farrel Lifson"
  s.email       = 'farrel.lifson@aimred.com'
  s.files       = %x{git ls-files}.split("\n")
  s.test_files    = %x{git ls-files -- {test,spec,features}/*}.split("\n")
  s.require_paths = ['lib']

  s.homepage    = 'https://www.aimred.com/projects/split_into'

  s.add_dependency 'simplecheck', '~> 0'
end

