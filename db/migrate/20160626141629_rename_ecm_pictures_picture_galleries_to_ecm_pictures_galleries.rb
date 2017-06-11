class RenameEcmPicturesPictureGalleriesToEcmPicturesGalleries < ActiveRecord::Migration[4.2]
  def change
    rename_table :ecm_pictures_picture_galleries, :ecm_pictures_galleries
  end
end
