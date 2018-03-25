module Ecm
  module Pictures
    class AttachedPicture < ActiveRecord::Base
      # associations
      belongs_to :picture
      belongs_to :pictureable, polymorphic: true

      # validations
      validates :picture, :pictureable, presence: true if Rails.version < '5.0.0'
    end
  end
end