class User < ApplicationRecord
  has_many :maps
  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  has_secure_password
end
