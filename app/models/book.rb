class Book < ApplicationRecord
  has_many :reviews
  has_one_attached :image

  def average_rating
    reviews.average(:score).to_f.round(2)
  end
end
