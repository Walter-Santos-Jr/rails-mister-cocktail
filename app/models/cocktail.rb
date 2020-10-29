class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews, dependent: :destroy
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true, uniqueness: true
end
