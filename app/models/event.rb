class Event < ApplicationRecord
  has_many :participations
  has_many :users, through: :participations
  belongs_to :event_type
  belongs_to :game

  before_create :set_name

  private

  def set_name
    self.name = "#{game.name} - #{event_type.name}" if name.blank?
  end
end
