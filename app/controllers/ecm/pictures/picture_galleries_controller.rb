module Ecm::Pictures
  class Ecm::Pictures::PictureGalleriesController < Ecm::Pictures::Configuration.base_controller.constantize
    def index
      @picture_galleries = Ecm::Pictures::PictureGallery.all
    end

    def show
      @picture_gallery = Ecm::Pictures::PictureGallery.find(params[:id])
    end
  end
end