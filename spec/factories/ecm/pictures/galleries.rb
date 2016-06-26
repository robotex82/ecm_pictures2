FactoryGirl.define do
  factory :ecm_pictures_gallery, class: Ecm::Pictures::Gallery do
    sequence(:name) { |n| "Gallery ##{n}" }

    trait :with_pictures do |gallery|
      3.times do
        gallery.after(:create) { |g| FactoryGirl.create(:ecm_pictures_picture, gallery: g) }
      end
      gallery.pictures_count 3
    end
  end
end
