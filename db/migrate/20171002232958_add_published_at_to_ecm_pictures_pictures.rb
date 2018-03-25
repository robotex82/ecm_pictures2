class AddPublishedAtToEcmPicturesPictures < ActiveRecord::Migration[4.2]
  def change
    add_column :ecm_pictures_pictures, :published_at, :timestamp
  end
end
