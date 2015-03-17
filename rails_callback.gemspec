$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_callback/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_callback"
  s.version     = RailsCallback::VERSION
  s.authors     = ["fortissimo1997"]
  s.email       = ["fortissimo1997@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RailsCallback."
  s.description = "TODO: Description of RailsCallback."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "< 5"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec"
  s.add_development_dependency 'rspec-rails'
end
