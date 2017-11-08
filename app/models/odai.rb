class Odai < ApplicationRecord
  belongs_to :photo
  has_many :bokes
  has_many :comments, through: :bokes
  belongs_to :user
end
