class Post < ApplicationRecord

  belongs_to :city
  belongs_to :user

  has_many :comments

  # validates_presence_of :title
  validates_presence_of :content
  validates :title,
            presence: true,
            length: {maximum: 200}
end
