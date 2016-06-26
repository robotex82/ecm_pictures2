require 'acts_as_list'
require 'acts_as_markup'
require 'friendly_id'
require 'paperclip'

require 'ecm/pictures/engine'
require 'ecm/pictures/configuration'
require 'ecm/pictures/routing'
require 'ecm/pictures/version'

module Ecm
  module Pictures
    extend Configuration

    def self.table_name_prefix
      'ecm_pictures_'
    end
  end
end
