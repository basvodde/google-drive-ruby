require 'rake'
require 'rake/testtask'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :default => [:test]

desc "Run unit tests"
Rake::TestTask.new("test") { |t|
  t.pattern = 'test/*.rb'
  t.verbose = true
  t.warning = true
}
