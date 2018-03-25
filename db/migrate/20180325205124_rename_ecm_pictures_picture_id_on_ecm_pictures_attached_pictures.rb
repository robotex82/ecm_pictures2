class RenameEcmPicturesPictureIdOnEcmPicturesAttachedPictures < ActiveRecord::Migration[4.2]
  def change
    rename_column :ecm_pictures_attached_pictures, :ecm_pictures_picture_id, :picture_id
  end
end
