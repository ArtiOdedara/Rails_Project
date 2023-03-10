class Modifier < ApplicationRecord
    has_many :item_modifiers
    has_many :items, through: :item_modifiers 
    has_one :rating

    default_scope {order(price: :asc)}
end
