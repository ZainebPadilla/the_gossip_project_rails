class City < ApplicationRecord
  validates :user, presence: true
  has_many :users
end
