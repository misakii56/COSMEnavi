class Review < ApplicationRecord
  belongs_to :cosmetic
  belongs_to :user
end
