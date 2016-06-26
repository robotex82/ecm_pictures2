module Ecm
  module Pictures
    class GalleriesController < Ecm::Pictures::Configuration.base_controller.constantize
      def index
        @galleries = Gallery.all
      end

      def show
        @gallery = Gallery.find(params[:id])
      end
    end
  end
end