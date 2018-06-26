class Game < ApplicationRecord
  has_many :events
  has_many :event_types, through: :events
end
