class Commentaire < ApplicationRecord

  belongs_to  :voyage
  belongs_to  :user

end
