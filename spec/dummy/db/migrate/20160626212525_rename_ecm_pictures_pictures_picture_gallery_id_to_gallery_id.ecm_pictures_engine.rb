# This migration comes from ecm_pictures_engine (originally 20160626143414)
class RenameEcmPicturesPicturesPictureGalleryIdToGalleryId < ActiveRecord::Migration
  def change
    rename_column :ecm_pictures_pictures, :picture_gallery_id, :gallery_id
  end
end
