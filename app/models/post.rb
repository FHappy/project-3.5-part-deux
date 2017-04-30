class Post < ApplicationRecord

  belongs_to :city
  belongs_to :user

  has_many :comments

  # validates_presence_of :title
  validates_presence_of :content
  validates :title,
            presence: true,
            length: {maximum: 200}

  
  def time_difference
    diff = ((Time.new - self.created_at) / 86400).to_i
    if diff < 1
      return "Written today."
    elsif diff == 1
      return "Written yesterday."
    else
      return "Written #{diff} days ago."
    end

  end
  
end
