class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper MarkupHelper
  helper Ecm::PicturesHelper
  helper Twitter::Bootstrap::Components::Rails::V3::ComponentsHelper
end
