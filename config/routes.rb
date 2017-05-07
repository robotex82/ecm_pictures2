Ecm::Pictures::Engine.routes.draw do
  localized do
    scope :ecm_pictures do
      resources :galleries, only: [:index, :show]
      resources :pictures,  only: [:index, :show]
      
      root to: 'galleries#index'
    end
  end
end
