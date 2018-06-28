class Game < ApplicationRecord
  has_many :releases
  has_many :systems, through: :releases
  has_many :owned_games
  has_many :users, through: :owned_games
  has_many :events
  has_many :event_types, through: :events

  validates :name, presence: true
end
