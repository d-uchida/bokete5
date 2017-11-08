class Photo < ApplicationRecord
  belongs_to :user
  has_one :odai
  mount_uploader :image, ImageUploader
end
