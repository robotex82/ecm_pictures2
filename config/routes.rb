Ecm::Pictures::Engine.routes.draw do
  localized do
    resources :galleries, only: [:index, :show]
    resources :pictures,  only: [:index, :show]
  end
end
