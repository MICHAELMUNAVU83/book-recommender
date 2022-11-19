class Book < ApplicationRecord
  has_many :reviews

  def average_rating
    reviews.average(:score).to_f.round(2)
  end
end
