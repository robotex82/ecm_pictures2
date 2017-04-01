module Ecm
  module Pictures
    class PicturesController < Ecm::Pictures::Configuration.base_controller.constantize
      before_action :load_collection, only: [:index]
      before_action :load_resource,   only: [:show]

      def index; end

      def show; end

      private

      def resource_class
        Picture
      end

      def load_collection
        @collection = resource_class.all
      end

      def load_resource
        @resource = resource_class.find(params[:id])
      end
    end
  end
end