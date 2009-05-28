require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "page_glimpse"
    gem.summary = %Q{A Ruby library for the PageGlimpse.com service}
    gem.email = "gem@nathanielbibler.com"
    gem.homepage = "http://github.com/nbibler/page_glimpse"
    gem.authors = ["Nathaniel Bibler"]
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
    
    gem.add_dependency('relax', '~> 0.1.0')
 
    gem.add_development_dependency('thoughtbot-shoulda', '~> 2.10.1')
    gem.add_development_dependency('mocha', '~> 0.9.5')
  end

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


task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION.yml')
    config = YAML.load(File.read('VERSION.yml'))
    version = "#{config[:major]}.#{config[:minor]}.#{config[:patch]}"
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "page_glimpse #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

