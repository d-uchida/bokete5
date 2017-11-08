class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :photos
         has_many :odais
         has_many :comments
         has_many :bokes
         validates :account_name, {presence: true}
         validates :sex, {presence: true}
         validates :prefecture, {presence: true}
end
