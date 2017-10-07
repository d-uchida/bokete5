class User < ApplicationRecord
  has_many :bokes
  has_many :odais
  has_many :comments
end
