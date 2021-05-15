class Store < ApplicationRecord
    has_many :customers, dependent: :destroy
    has_many :items, through: :customers, dependent: :destroy
    
    validates :name, :phone, :city, presence: true
end
