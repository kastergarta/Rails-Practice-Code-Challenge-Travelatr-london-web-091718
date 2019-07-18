class Destination < ApplicationRecord
  has_many :bloggers, through: :posts
  has_many :posts
end
