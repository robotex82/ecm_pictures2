require 'acts_as_list'
require 'acts_as_markup'
require 'friendly_id'
require 'paperclip'
require 'active_admin-acts_as_list' if Gem::Specification.find_all_by_name('activeadmin').any?

require 'ecm/pictures/engine'
require 'ecm/pictures/configuration'
require 'ecm/pictures/routing'
require 'ecm/pictures/version'
require 'ecm/pictures/active_admin/pictureable_helper' if Gem::Specification.find_all_by_name('activeadmin').any?

module Ecm
  module Pictures
    extend Configuration
  end
end
