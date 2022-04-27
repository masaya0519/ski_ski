class Ski < ApplicationRecord
  belongs_to :genre
  has_many :reviews, dependent: :destroy
  has_one_attached :image
  validate :image_presence
  
  def image_presence
    errors.add(:image, 'ファイルを添付してください') unless image.attached?
  end
  
end
