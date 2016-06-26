require 'rails_helper'

module Ecm
  module Pictures
    describe GalleriesController do
      describe 'GET index' do
        it 'assigns all ecm_pictures_galleries to @galleries' do
          galleries = create_list(:ecm_pictures_gallery, 3)
          get :index
          assigns(:galleries).should eq(galleries)
        end
      end

      describe 'GET show' do
        it 'assigns a gallery to @gallery' do
          gallery = FactoryGirl.create(:ecm_pictures_gallery)
          get :show, id: gallery
          assigns(:gallery).should eq(gallery)
        end
      end
    end
  end
end
