class Event < ApplicationRecord
  has_many :participations
  has_many :users, through: :participations
  belongs_to :event_type
  belongs_to :game

  def name
    super || "#{game.name} - #{event_type.name}" if id
  end
end
