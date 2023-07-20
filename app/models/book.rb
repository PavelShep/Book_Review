class Book < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :reviews

  has_one_attached :image

  #need for average rating
  def average_rating
    if self.reviews.size > 0
        self.reviews.average(:rating)
    else
        "There are no reviews"
    end
  end

end
