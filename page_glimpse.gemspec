# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{page_glimpse}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nathaniel Bibler"]
  s.date = %q{2009-05-28}
  s.email = %q{gem@nathanielbibler.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "lib/page_glimpse.rb",
     "test/page_glimpse_test.rb",
     "test/test_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/nbibler/page_glimpse}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{A Ruby library for the PageGlimpse.com service}
  s.test_files = [
    "test/page_glimpse_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<relax>, ["~> 0.1.0"])
      s.add_development_dependency(%q<thoughtbot-shoulda>, ["~> 2.10.1"])
      s.add_development_dependency(%q<mocha>, ["~> 0.9.5"])
    else
      s.add_dependency(%q<relax>, ["~> 0.1.0"])
      s.add_dependency(%q<thoughtbot-shoulda>, ["~> 2.10.1"])
      s.add_dependency(%q<mocha>, ["~> 0.9.5"])
    end
  else
    s.add_dependency(%q<relax>, ["~> 0.1.0"])
    s.add_dependency(%q<thoughtbot-shoulda>, ["~> 2.10.1"])
    s.add_dependency(%q<mocha>, ["~> 0.9.5"])
  end
end
