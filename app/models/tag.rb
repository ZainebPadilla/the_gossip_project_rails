class Tag < ApplicationRecord
  has_many :tagged_gossips
  has_many :gossips, through: :tagged_gossips
end
