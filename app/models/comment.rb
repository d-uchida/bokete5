class Comment < ApplicationRecord
  belongs_to :boke
  belongs_to :user
  validates :star, length: { in:1..3 }
  validates :text, length: { in:1..60 }

end
