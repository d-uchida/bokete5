class Comment < ApplicationRecord
  belongs_to :boke
  belongs_to :user
  validates :star
end
