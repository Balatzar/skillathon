class Genre < ApplicationRecord
  has_many :facets
  has_many :games, through: :facets
end
