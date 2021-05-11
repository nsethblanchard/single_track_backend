class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :price, :purchaseDate, :bikeType, :avgMileage, :customer_id
end
