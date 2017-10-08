class Comment < ApplicationRecord
  belongs_to :boke
  belongs_to :user
  validates :star, length: { in: 1..75 }  
end
