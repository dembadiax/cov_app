class Note < ApplicationRecord

  belongs_to :voyageur
  belongs_to  :voyage
end
