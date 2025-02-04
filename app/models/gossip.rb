class Gossip < ApplicationRecord
  validates :user, presence: true
  validates :title, 
    presence: true,
    length: { minimum: 3, maximum: 14 }
  validates :content, presence: true
  
  belongs_to :user
  has_many :tagged_gossips
  has_many :tags, through: :tagged_gossips
end
