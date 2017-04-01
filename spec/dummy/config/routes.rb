Rails.application.routes.draw do
  mount Ecm::Pictures::Engine, at: "/"

  resource :demo do
    get :picture_gallery_helper, on: :member
    get :picture_helper, on: :member
  end

  root to: 'ecm/pictures/galleries#index'
end
