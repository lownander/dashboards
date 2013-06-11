# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "google_client_login"
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel Kehoe"]
  s.date = "2011-01-13"
  s.description = "Use this gem for access to Google services protected by a user's Google or Google Apps account."
  s.email = ["kehoe@fortuity.com"]
  s.homepage = "http://github.com/fortuity/google_client_login"
  s.require_paths = ["lib"]
  s.rubyforge_project = "google_client_login"
  s.rubygems_version = "2.0.0"
  s.summary = "Authentication for Google APIs using the Google ClientLogin."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 2.0.0"])
    else
      s.add_dependency(%q<rspec>, [">= 2.0.0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 2.0.0"])
  end
end
