class City < ApplicationRecord
  include FriendlyId
  validates_uniqueness_of :name
  before_save :downcase_name


  friendly_id :name_downcase

  has_many :posts, dependent: :destroy



  def downcase_name
    self.name_downcase = self.name.downcase
  end
  

end
