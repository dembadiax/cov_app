class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader
  has_many  :commentaires
  has_one :voyagiste
  has_one :voiture, through: :voyagiste
  has_many :trajet, through: :voyagiste
  has_many :voyages, through: :voyagiste

  has_one :voyageur
  has_many :reservation, through: :voyageur
  has_many :notes, through: :voyageur
  has_many :voyages, through: :voyageur
end
