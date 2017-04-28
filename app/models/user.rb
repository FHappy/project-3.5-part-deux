class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :login

  validates :username,
            presence: true,
            uniqueness: true

  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true


  has_many :posts
  has_many :cities, through: :posts


end
