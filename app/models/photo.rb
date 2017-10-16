class Photo < ApplicationRecord
  belongs_to :user
  has_many :odais
  # has_many :sedond_odais
  mount_uploader :image, ImageUploader
end
