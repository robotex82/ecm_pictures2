$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'ecm/pictures/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'ecm_pictures2'
  s.version     = Ecm::Pictures::VERSION
  s.authors     = ['Roberto Vasquez Angel']
  s.email       = ['roberto@vasquez-angel.de']
  s.homepage    = 'https://github.com/robotex82/ecm_pictures'
  s.summary     = 'ECM Picture galleries module for ruby on rails.'
  s.description = 'ECM Picture galleries module for ruby on rails.'

  s.files = Dir['{app,config,db,lib}/**/*', 'spec/factories/**/*', 'spec/files/**/*'] + ['MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails', '>= 4.0'

  # Module dependencies
  s.add_dependency 'acts_as_list'
  s.add_dependency 'acts_as_markup'
  s.add_dependency 'acts_as_published'
  s.add_dependency 'friendly_id'
  s.add_dependency 'paperclip'
  s.add_dependency 'RedCloth'
  s.add_dependency 'route_translator'
  s.add_dependency 'haml-rails'
  s.add_dependency 'twitter-bootstrap-components-rails'

  # Dummy app
  s.add_development_dependency 'rails-dummy'
  s.add_development_dependency 'thin'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'jquery-rails'
  s.add_development_dependency "therubyracer"
  s.add_development_dependency "less-rails" # Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
  s.add_development_dependency "twitter-bootstrap-rails"
  s.add_development_dependency "coffee-rails"

  # Tests
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'factory_girl_rails'

  # Test automation
  s.add_development_dependency 'guard-rails'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'guard-bundler'
end
