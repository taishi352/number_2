class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :profile_image
  has_many :books, dependent: :destroy
  validates :title, presence: true
  validates :title, length: { maximum: 200 }
  validates :body, presence: true
  validates :body, length: { maximum: 200 }
end
