require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "fear-of-callbacks"
    gem.summary = %Q{ Activate logging of all your used ActiveRecord callback hooks }
    gem.description = %Q{ ActiveRecord has lots of callbacks like before_save, this gem logs all of the used ones to your log }
    gem.email = "jamie@fearoffish.com"
    gem.homepage = "http://github.com/fearoffish/fear-of-callbacks"
    gem.authors = ["Jamie van Dyke"]
    gem.add_development_dependency "thoughtbot-shoulda"
    gem.add_development_dependency "yard"
    gem.files = FileList['lib/**/*.rb', 'test/**/*'].to_a
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/*_test.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

begin
  require 'yard'
  YARD::Rake::YardocTask.new
rescue LoadError
  task :yardoc do
    abort "YARD is not available. In order to run yardoc, you must: sudo gem install yard"
  end
end
