class User < ApplicationRecord
  belongs_to :skin_type
  belongs_to :parsonal_color
  has_many :reviews
  has_one_attached :profile_image
 def active_for_authentication?
    super && (is_deleted == false)
 end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
