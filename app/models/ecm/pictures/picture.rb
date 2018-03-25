module Ecm
  module Pictures
    class Picture < ActiveRecord::Base
      # associations
      belongs_to :gallery, optional: true
      has_many :attached_pictures, foreign_key: 'ecm_pictures_picture_id'

      # acts as list
      acts_as_list scope: :gallery

      # acts as markup
      acts_as_markup language: :variable, columns: [:description, :description]

      include ActsAsPublished::ActiveRecord
      acts_as_published

      # callbacks
      after_initialize :set_defaults
      before_validation :set_name_from_image_file_name, if: proc { |p| (p.name.nil? || p.name.empty?) }

      # default scope
      default_scope { order(:gallery_id, :position) }
      # friendly id
      extend FriendlyId
      friendly_id :name, use: [:slugged, :finders]
      # paperclip
      has_attached_file :image, Ecm::Pictures::Configuration.paperclip_options

      # tagging
      acts_as_taggable if respond_to?(:acts_as_taggable)

      # validations
      validates :image, attachment_presence: true
      validates_attachment :image, size: { in: 0..Ecm::Pictures.maximum_image_file_size } unless Ecm::Pictures.maximum_image_file_size.nil?
      # validates_attachment_presence :image
      validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }

      validates :markup_language, presence: true,
                                  inclusion: Ecm::Pictures::Configuration.markup_languages
      validates :name, presence: true

      def display_code_for_erb
        display_code(:erb)
      end

      def display_code_for_textile
        display_code(:textile)
      end

      def display_code(style)
        case style
        when :erb
          "<%= render_picture '#{name}' %>"
        when :textile
          "!#{image.url}!".gsub(/(\?[0-9]{1,})/, '')
        end
      end

      def to_s
        name
      end

      def human
        name
      end

      private

      def set_defaults
        if self.new_record?
          self.markup_language ||= Ecm::Pictures::Configuration.default_markup_language
        end
      end

      def set_name_from_image_file_name
        self.name = File.basename(image_file_name, File.extname(image_file_name)) unless image_file_name.nil?
      end
    end
  end
end

