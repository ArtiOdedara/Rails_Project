class Item < ApplicationRecord
    belongs_to :category
    has_many :item_modifiers
    has_many :modifiers, through: :item_modifiers
    has_one :rating, as: :rateable

    default_scope {order(price: :asc)}
end
