class Handicap < ApplicationRecord
  belongs_to :user
  has_many :variables, inverse_of: :handicap, dependent: :destroy
  accepts_nested_attributes_for :variables, reject_if: :all_blank, allow_destroy: true

  validates :description, presence: true

  def display
    description.gsub(/%\d+/) { |v| variables[v.scan(/\d+/).first.to_i - 1].value }
  end
end
