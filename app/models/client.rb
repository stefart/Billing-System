class Client < ApplicationRecord
  has_many :bills, dependent: :delete_all
  validates_presence_of :nome, :cognome, :telefono
  validates_length_of :telefono, maximum: 11, minimum: 9, numericality: true
  #validates_uniqueness_of :telefono

end
