$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ecm/pictures/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ecm_pictures2"
  s.version     = Ecm::Pictures::VERSION
  s.authors     = ["Roberto Vasquez Angel"]
  s.email       = ["roberto@vasquez-angel.de"]
  s.homepage    = "https://github.com/robotex82/ecm_pictures"
  s.summary     = "Picture galleries for active admin."
  s.description = "Provides picture galleries for active admin."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", ">= 4.0", '< 5.0'

  # Module dependencies
  s.add_dependency "acts_as_list"
  s.add_dependency "acts_as_markup"
  # s.add_dependency "active_admin-acts_as_list"
  s.add_dependency "friendly_id"
  s.add_dependency "paperclip"
  s.add_dependency 'RedCloth'

  # Dummy app
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "twitter-bootstrap-rails"
  s.add_development_dependency 'devise'

  # Development Server
  s.add_development_dependency "thin"

  # Documentation
  s.add_development_dependency "yard"

  # Active admin
  # s.add_development_dependency 'activeadmin'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'less-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'therubyracer'

  # Tests
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'factory_girl_rails'

  # Test automation
  # s.add_development_dependency 'rb-inotify', '~> 0.8.8'
  s.add_development_dependency 'guard-rails'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'guard-bundler'
end
