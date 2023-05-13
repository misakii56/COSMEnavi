class Review < ApplicationRecord
  belongs_to :cosmetic
  belongs_to :user
  has_many :comments

  validates :rate, presence: true
  validates :review, presence: true
end
