class User < ApplicationRecord
  has_one_attached :image
  has_secure_password
  validates :username, uniqueness: {case_sensitive: false}
  has_many :cameras
  has_many :albums
  has_many :friends
end
