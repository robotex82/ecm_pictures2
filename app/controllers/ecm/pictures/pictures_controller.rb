module Ecm::Pictures
  class PicturesController < Ecm::Pictures::Configuration.base_controller.constantize
    def index
      @pictures = Ecm::Pictures::Picture.all
    end

    def show
      @picture = Ecm::Pictures::Picture.find(params[:id])
    end
  end
end