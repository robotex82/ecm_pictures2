module Ecm::Pictures
  class PicturesController < Ecm::Pictures::Configuration.base_controller.constantize
    def index
      @pictures = Picture.all
    end

    def show
      @picture = Picture.find(params[:id])
    end
  end
end
