class Customer < ApplicationRecord
  belongs_to :store
  has_many :items, dependent: :destroy

  validates :name, :email, :phone, :bikeStyle, presence: true
end
