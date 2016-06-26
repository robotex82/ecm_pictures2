require 'rails_helper'

describe 'ecm/pictures/galleries/index.html.erb' do
  def add_controller_helpers(*controllers)
    controllers.each { |c| view.singleton_class.class_eval { include c.new._helpers } }
  end

  before do
    add_controller_helpers ApplicationController
  end

  before(:each) do
    @galleries = FactoryGirl.create_list(:ecm_pictures_gallery, 5, :with_pictures)
    assign(:galleries, @galleries)
    render
  end

  it { view.should render_template(partial: '_gallery_for_index', count: @galleries.count) }
  it { @galleries.each { |gallery| rendered.should include(gallery.name) } }
end
