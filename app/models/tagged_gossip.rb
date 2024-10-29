class TaggedGossip < ApplicationRecord
  validates :tag, presence :true
  validates :gossip, presence :true
  
  belongs_to :tag
  belongs_to :gossip
end
