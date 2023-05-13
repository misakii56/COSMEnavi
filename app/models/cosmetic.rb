class Cosmetic < ApplicationRecord
  has_one_attached :image
  has_many :reviews

  validates :name, presence: true
  validates :brand, presence: true
  validates :color, presence: true
  validates :source, presence: true
  
  
end
