class TariffaOrarium < ApplicationRecord
  validates :tariffa, numericality: {greater_than_or_equal_to: 1}
  validates :tariffa, presence: true
end
