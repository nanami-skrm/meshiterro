class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :post_images, dependent: :destroy
  has_many :post_comments, dependent: :destroy #dependent: :destroy(1が消えたらNのデータも全部消える)
  has_many :favorites, dependent: :destroy
  attachment :profile_image #attachmentにはカラム名から_idを除いた名前を記述する
end
