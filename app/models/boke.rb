class Boke < ApplicationRecord
  belongs_to :user
  belongs_to :odai
  # belongs_to :second_odai
  has_many :comments

end
