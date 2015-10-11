class Post < ActiveRecord::Base
  attr_accessible :body, :title if respond_to?(:attr_accessible)

  validates :title, :presence => true
end
