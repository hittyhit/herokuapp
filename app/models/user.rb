class User < ActiveRecord::Base

#Добавить :timeoutable and :omniauthable для аутентификации через соц.сети
  devise :database_authenticatable, :registerable, :confirmable,
    :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :comments

  mount_uploader :avatar, AvatarUploader

  validates_presence_of :name

  self.per_page = 10

end
