require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:cucumber)

desc "Run Cucumber to collect coverage"
task :default do
  FileUtils.rm_rf('coverage')

  Rake::Task["cucumber"].invoke
end