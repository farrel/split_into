require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test:lib'
  t.pattern = "test/*_test.rb"
end

task default: :test
