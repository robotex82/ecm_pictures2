Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  Ecm::Pictures::Routing.routes(self)

  resource :demo do
    get :picture_gallery_helper, on: :member
    get :picture_helper, on: :member
  end

  root to: 'ecm/pictures/picture_galleries#index'
end
