module Ecm
  module Pictures
    class AttachedPicture < ActiveRecord::Base
      # associations
      belongs_to :picture, foreign_key: 'ecm_pictures_picture_id'
      belongs_to :pictureable, polymorphic: true

      # validations
      validates :picture, :pictureable, presence: true
    end
  end
end