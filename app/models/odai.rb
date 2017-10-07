class Odai < ApplicationRecord
  belongs_to :user
  has_many :bokes
  has_many :comments
end
