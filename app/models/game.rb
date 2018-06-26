class Game < ApplicationRecord
  has_many :events
  has_many :event_types, through: :events

  validates :name, presence: true
end
