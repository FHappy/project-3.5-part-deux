class Post < ApplicationRecord

  belongs_to :city
  belongs_to :user

  validates_presence_of :title
  validates_presence_of :content
end
