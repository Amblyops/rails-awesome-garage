class Car < ApplicationRecord
  belongs_to :owner
  has_many :favourites
  has_many :reviews
end
