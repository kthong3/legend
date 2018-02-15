class User < ApplicationRecord
  has_many :maps
  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true
  has_secure_password
end
