class AddPublishedAtToEcmPicturesGalleries < ActiveRecord::Migration[4.2]
  def change
    add_column :ecm_pictures_galleries, :published_at, :timestamp
  end
end
