# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{acts_as_scribe}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Linking Paths", "Aitor Garc\303\255a", "Roberto Salicio", "Adam McDonald"]
  s.date = %q{2009-02-24}
  s.description = %q{A simple plugin that allows to keep track of the users activity. Common uses could be user's wall, public timeline portlets, etc...}
  s.email = %q{mcdonald.adam@gmail.com}
  s.files = ['rails/init.rb'] + Dir['lib/**/*']
  s.homepage = %q{http://github.com/raid5/acts_as_scribe}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A simple plugin that allows to keep track of the users activity. Common uses could be user's wall, public timeline portlets, etc...}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
