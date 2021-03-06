class EventType < ApplicationRecord
  has_many :events
  has_many :games, through: :events

  validates :name, presence: true
end
