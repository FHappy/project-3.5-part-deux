class City < ApplicationRecord
  include FriendlyId
  friendly_id :name

  has_many :posts


  validates_uniqueness_of :name

end
