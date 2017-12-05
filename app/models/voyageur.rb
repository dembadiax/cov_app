class Voyageur < ApplicationRecord
  belongs_to :utilisateur
  belongs_to :voyage
  has_many  :notes
  has_many  :reservations
end
