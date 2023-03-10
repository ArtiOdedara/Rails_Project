class Rating < ApplicationRecord
    validates :rating, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5 } 
    belongs_to :rateable, polymorphic: true

    scope :good_rating, -> {where('rating >= 4')}
    scope :average_rating, -> {where('rating < 4')}
    default_scope {order(rating: :desc)}
end

