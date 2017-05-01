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
    diff = Time.new - self.created_at
    diff_secs = diff.round
    diff_days = (diff / 86400).round
    diff_hours = (diff / 3600).round
    diff_mins = (diff / 60).round
    if diff_days >= 2
      return "Written #{diff_days} days ago."
    elsif diff_hours >= 1
      return "Written #{diff_hours} hours ago."
    elsif diff_mins >= 1
      return "Written #{diff_mins} minutes ago."
    else
      return "Written #{diff_secs} seconds ago."
    end
    
  end
  
end
