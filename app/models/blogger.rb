class Blogger < ApplicationRecord
  has_many :destinations, through: :posts
  has_many :posts
end
