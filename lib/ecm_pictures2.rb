require 'acts_as_list'
require 'acts_as_markup'
require 'acts_as_published'
require 'friendly_id'
require 'haml-rails'
require 'paperclip'
require 'route_translator'
require 'twitter/bootstrap/components/rails'

require 'ecm/pictures/engine'
require 'ecm/pictures/configuration'
require 'ecm/pictures/version'

module Ecm
  module Pictures
    extend Configuration

    def self.table_name_prefix
      'ecm_pictures_'
    end
  end
end
