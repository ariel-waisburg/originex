class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_interests
  has_many :activities, through: :user_interests
  has_many :participants
  has_many :chatrooms, through: :participants
  accepts_nested_attributes_for :user_interests
  has_one_attached :photo
end
