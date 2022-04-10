class Ski < ApplicationRecord
  belongs_to :genre
  has_one_attached :image
  has_many :reviews
end
