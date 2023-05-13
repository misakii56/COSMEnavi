class SkinType < ApplicationRecord
  has_many :users
  
  validates :type_name, presence: true
end
