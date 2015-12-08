FactoryGirl.define do
  factory :ecm_pictures_picture, class: Ecm::Pictures::Picture do
    image File.open(File.join(Ecm::Pictures::Engine.root, 'spec/files', 'ecm/pictures', 'picture/image.jpg'))
  end
end
