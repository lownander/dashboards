# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "google_client_login/version"

Gem::Specification.new do |s|
  s.name        = "google_client_login"
  s.version     = GoogleClientLogin::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Daniel Kehoe"]
  s.email       = ["kehoe@fortuity.com"]
  s.homepage    = "http://github.com/fortuity/google_client_login"
  s.summary     = %q{Authentication for Google APIs using the Google ClientLogin.}
  s.description = %q{Use this gem for access to Google services protected by a user's Google or Google Apps account.}

  s.rubyforge_project = "google_client_login"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_development_dependency "rspec", ">= 2.0.0"
end
