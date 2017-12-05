class Voyagiste < ApplicationRecord
  belongs_to :utilisateur
  belongs_to :voyage
  belongs_to :vehicule

  has_many  :trajets
end
