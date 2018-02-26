class Map < ApplicationRecord
  belongs_to :user
  has_many :places
  validates :title, :description, presence: true
end
