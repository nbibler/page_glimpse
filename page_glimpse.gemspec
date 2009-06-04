# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{page_glimpse}
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nathaniel Bibler"]
  s.date = %q{2009-06-04}
  s.email = %q{gem@nathanielbibler.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "CHANGELOG.rdoc",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION.yml",
     "lib/page_glimpse.rb",
     "lib/page_glimpse/api.rb",
     "lib/page_glimpse/exceptions.rb",
     "lib/page_glimpse/image.rb",
     "lib/page_glimpse/image_parser.rb",
     "lib/page_glimpse/json_parser.rb",
     "page_glimpse.gemspec",
     "test/integrations/page_glimpse_test.rb",
     "test/mocks/page_glimpse.rb",
     "test/test_helper.rb",
     "test/units/page_glimpse_test.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/nbibler/page_glimpse}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{page-glimpse}
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{A Ruby library for the PageGlimpse.com service}
  s.test_files = [
    "test/integrations/page_glimpse_test.rb",
     "test/mocks/page_glimpse.rb",
     "test/test_helper.rb",
     "test/units/page_glimpse_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<relax>, ["~> 0.1.1"])
      s.add_runtime_dependency(%q<json>, ["~> 1.1.6"])
      s.add_development_dependency(%q<thoughtbot-shoulda>, ["~> 2.10.1"])
      s.add_development_dependency(%q<mocha>, ["~> 0.9.5"])
      s.add_development_dependency(%q<fakeweb>, ["~> 1.2.2"])
    else
      s.add_dependency(%q<relax>, ["~> 0.1.1"])
      s.add_dependency(%q<json>, ["~> 1.1.6"])
      s.add_dependency(%q<thoughtbot-shoulda>, ["~> 2.10.1"])
      s.add_dependency(%q<mocha>, ["~> 0.9.5"])
      s.add_dependency(%q<fakeweb>, ["~> 1.2.2"])
    end
  else
    s.add_dependency(%q<relax>, ["~> 0.1.1"])
    s.add_dependency(%q<json>, ["~> 1.1.6"])
    s.add_dependency(%q<thoughtbot-shoulda>, ["~> 2.10.1"])
    s.add_dependency(%q<mocha>, ["~> 0.9.5"])
    s.add_dependency(%q<fakeweb>, ["~> 1.2.2"])
  end
end
