class Dictionary < ApplicationRecord
  has_many :variables
  has_many :words, inverse_of: :dictionary
  accepts_nested_attributes_for :words, reject_if: :all_blank, allow_destroy: true
end
