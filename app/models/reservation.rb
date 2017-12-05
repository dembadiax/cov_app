class Reservation < ApplicationRecord
  belongs_to :voyageur
  belongs_to :voyage
end
