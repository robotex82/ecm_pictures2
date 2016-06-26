require 'active_support/core_ext/module/delegation'
require 'active_support/core_ext/module/attribute_accessors'
require 'active_support/hash_with_indifferent_access'

module Ecm
  module Pictures
    module Configuration
      def configure
        yield self
      end

      mattr_accessor :markup_languages do
        []
      end

      mattr_accessor :default_markup_language do
        nil
      end

      mattr_accessor :paperclip_options do
        {}
      end

      mattr_accessor :base_controller do
        'ApplicationController'
      end

      mattr_accessor :prevent_textile_rendering_in_html do
        true
      end

      mattr_accessor :render_gallery_index_as do
        :thumbnail
      end
    end
  end
end
