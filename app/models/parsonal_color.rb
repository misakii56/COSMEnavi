class ParsonalColor < ApplicationRecord
  has_many :users
  
  validates :color_name, presence: true
end
