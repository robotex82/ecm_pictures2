require 'rails_helper'

module Ecm
  module Pictures
    describe Gallery do
      subject { FactoryGirl.create(:ecm_pictures_gallery) }

      context 'associations' do
        it { should have_many(:pictures) }
      end

      context 'basic validations' do
        it { should validate_presence_of(:name) }
        it { should validate_uniqueness_of(:name) }
      end

      context 'acts as list' do
        it { should respond_to(:move_to_top) }
        it { should respond_to(:move_higher) }
        it { should respond_to(:move_lower) }
        it { should respond_to(:move_to_bottom) }
      end

      context 'friendly id' do
        subject { FactoryGirl.create(:ecm_pictures_gallery, name: 'Look, a slugged gallery!') }

        it { expect(subject.to_param).to eq('look-a-slugged-gallery') }
      end
    end
  end
end
