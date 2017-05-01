class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates :username,
            presence: true,
            uniqueness: true

  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true
  before_save :downcase_username

  include FriendlyId
  friendly_id :username_downcase

  attr_accessor :login
  has_many :posts, dependent: :destroy
  has_many :cities, through: :posts

  has_many :active_bonds,  class_name: "Bond",
                           foreign_key: "follower_id",
                           dependent: :destroy
  has_many :passive_bonds, class_name: "Bond",
                           foreign_key: "followed_id",
                           dependent: :destroy

  has_many :following, through: :active_bonds, source: :followed
  has_many :followers, through: :passive_bonds

  has_many :comments

  geocoded_by :current_city
  after_validation :geocode
  
  def login
    @login || self.username || self.email
  end

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      if conditions[:username].nil?
        where(conditions).first
      else
        where(username: conditions[:username]).first
      end
    end
  end

  def downcase_username
    self.username_downcase = self.username.downcase
  end

  def sorted_posts
    posts = []
    self.following.each do |user|
      user.posts.each do |post|
        posts << post
      end  
    end
    posts.sort! {|x,y| y.created_at <=> x.created_at}
  end

  # BOND METHODS
  def follow(other_user)
    self.following << other_user
  end

  def unfollow(other_user)
    self.following.delete(other_user)
  end

  def following?(other_user)
    self.following.include?(other_user)
  end
  
  
  


end
