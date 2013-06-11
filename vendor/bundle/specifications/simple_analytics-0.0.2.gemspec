# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "simple_analytics"
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andrew Djoga"]
  s.date = "2013-01-15"
  s.description = "The Simple Analytics allows to access Google Analytics report data"
  s.email = ["andrew.djoga@gmail.com"]
  s.homepage = "https://github.com/Djo/simple_analytics"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.0"
  s.summary = "Google Analytics Export API Ruby Wrapper"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<google_client_login>, ["~> 0.3"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<fuubar>, [">= 0"])
      s.add_development_dependency(%q<webmock>, [">= 0"])
    else
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<google_client_login>, ["~> 0.3"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<fuubar>, [">= 0"])
      s.add_dependency(%q<webmock>, [">= 0"])
    end
  else
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<google_client_login>, ["~> 0.3"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<fuubar>, [">= 0"])
    s.add_dependency(%q<webmock>, [">= 0"])
  end
end
