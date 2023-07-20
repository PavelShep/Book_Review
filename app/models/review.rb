class Review < ApplicationRecord
  belongs_to :user
  belongs_to :book

  #need for rating system
  def blank_stars
    5 - rating.to_i
  end

end
