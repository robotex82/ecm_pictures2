module Ecm
  module Pictures
    class GalleriesController < Ecm::Pictures::Configuration.base_controller.constantize
      before_action :load_collection, only: [:index]
      before_action :load_resource,   only: [:show]

      def index; end

      def show; end

      private

      def resource_class
        Gallery
      end

      def load_collection
        @collection = resource_class.published.all
      end

      def load_resource
        @resource = resource_class.published.find(params[:id])
      end
    end
  end
end