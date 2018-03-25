module Ecm
  module Pictures
    class Gallery < ActiveRecord::Base
      # associations
      has_many :pictures, -> { order :position },
               dependent: :destroy do
        def published
          where(proxy_association.reflection.klass.arel_table[:published_at].not_eq(nil))
        end
      end

      # attributes
      accepts_nested_attributes_for :pictures, allow_destroy: true

      # acts as list
      acts_as_list
      default_scope { order(:position) }

      include ActsAsPublished::ActiveRecord
      acts_as_published

      # acts as markup
      acts_as_markup language: :variable, columns: [:description]

      # callbacks
      after_initialize :set_defaults

      # friendly id
      extend FriendlyId
      friendly_id :name, use: [:slugged, :finders]

      # tagging
      acts_as_taggable if respond_to?(:acts_as_taggable)

      # validations
      validates :markup_language, presence: true,
                                  inclusion: Ecm::Pictures::Configuration.markup_languages
      validates :name, presence: true,
                       uniqueness: true

      def display_code_for_erb
        "<%= render_picture_gallery '#{name}' %>"
      end

      def picture_images=(picture_images)
        picture_images.each do |image|
          next if image.respond_to?(:empty?) && image.empty?
          pictures.build(image: image)
        end
      end

      def to_s
        name
      end

      def human
        name
      end

      def preview_picture
        pictures.published.first
      end

      private

      def set_defaults
        if self.new_record?
          self.link_images = true if link_images.nil?
          self.markup_language ||= Ecm::Pictures::Configuration.default_markup_language
        end
      end
    end
  end
end
