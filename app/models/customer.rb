class Customer < ApplicationRecord
  belongs_to :store
  has_many :items, dependent: :destroy
end
