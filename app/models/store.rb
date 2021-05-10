class Store < ApplicationRecord
    has_many :customers
    has_many :items, through: :customers
    
end
