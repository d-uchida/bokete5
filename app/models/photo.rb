class Photo < ApplicationRecord
  belongs_to :user
  has_many :odais
  mount_uploader :image, ImageUploader
end
