# This migration comes from ecm_pictures_engine (originally 20160626141629)
class RenameEcmPicturesPictureGalleriesToEcmPicturesGalleries < ActiveRecord::Migration
  def change
    rename_table :ecm_pictures_picture_galleries, :ecm_pictures_galleries
  end
end
