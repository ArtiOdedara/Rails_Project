class Category < ApplicationRecord
    has_many :items
    has_one :rating, as: :rateable

    scope :active, -> { where(status: true )} 
    scope :inactive, -> { where(status: false)}
    default_scope {order(id: :asc)}
end