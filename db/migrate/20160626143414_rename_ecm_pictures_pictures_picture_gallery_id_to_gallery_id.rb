class RenameEcmPicturesPicturesPictureGalleryIdToGalleryId < ActiveRecord::Migration[4.2]
  def change
    rename_column :ecm_pictures_pictures, :picture_gallery_id, :gallery_id
  end
end
