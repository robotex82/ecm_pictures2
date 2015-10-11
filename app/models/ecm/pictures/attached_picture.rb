module Ecm::Pictures
  class AttachedPicture < ActiveRecord::Base
    self.table_name = 'ecm_pictures_attached_pictures'

    # associations
    belongs_to :picture, :foreign_key => 'ecm_pictures_picture_id'
    belongs_to :pictureable, :polymorphic => true

    # attributes
    attr_accessible :ecm_pictures_picture_id if respond_to?(:attr_accessible)

    # validations
    validates :picture, :pictureable, :presence => true
  end # class AttachedPicture < ActiveRecord::Base
end# module Ecm::Pictures

