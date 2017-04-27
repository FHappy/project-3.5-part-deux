class User < ApplicationRecord


  # validates_uniqueness_of :email
  validates :email, {case_sensitive: false}
end
