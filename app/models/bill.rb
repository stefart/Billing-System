class Bill < ApplicationRecord
  belongs_to :client
  attr_readonly :TariffaOrarium
  validates :ore_eff, numericality: {greater_than_or_equal_to: 1}
  validates_presence_of :voce, :ore_eff
end
