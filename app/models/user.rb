class User < ApplicationRecord
  belongs_to :skin_type
  belongs_to :parsonal_color
  has_many :reviews
  has_many :comments
  has_one_attached :profile_image
 def active_for_authentication?
    super && (is_deleted == false)
 end


  def self.guest
  find_or_create_by!(email: 'aaa@aaa.com') do |user|
    user.password = SecureRandom.urlsafe_base64
    user.password_confirmation = user.password
    user.nickname = 'ゲスト'
    user.skin_type = SkinType.first
    user.parsonal_color = ParsonalColor.first
    user.birth_date = '1989-01-01'
    user.introduction = 'テスト'
    end
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
