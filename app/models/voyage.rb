class Voyage < ApplicationRecord

  has_many  :notes
  has_many  :voyageurs
  has_many  :trajet
  belongs_to  :voyagiste
  has_many  :commentaires
end
