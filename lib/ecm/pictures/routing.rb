module Ecm
  module Pictures
    class Routing
      # Creates the routes for pictures and galleries. You can pass options to
      # specify the actions for both pictures and/or galleries.
      #
      #   Ecm::Pictures::Routing.routes(self, { :gallery_actions => [ :show ]})
      #
      # This will only create the show action for galleries, but omit the index action.
      def self.routes(router, options = {})
        options.reverse_merge!(
          gallery_actions: [:index, :show],
          picture_actions: [:index, :show]
        )

        router.resources :ecm_pictures_galleries, only: options[:gallery_actions], controller: 'ecm/pictures/galleries'
        router.resources :ecm_pictures_pictures, only: options[:picture_actions], controller: 'ecm/pictures/pictures'
      end
    end
  end
end
