class Variable < ApplicationRecord
  belongs_to :handicap
  belongs_to :dictionary, optional: true

  enum variable_type: %i[number word]

  validates :variable_type, presence: true

  def value
    case variable_type
    when "word"
      dictionary.words.sample.name
    else
      (min..max).to_a.sample
    end
  end
end
