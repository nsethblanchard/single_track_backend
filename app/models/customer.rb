class Customer < ApplicationRecord
  belongs_to :store
  has_many :items, dependent: :destroy

  validates :name, :phone, :bike_style, presence: true
end
