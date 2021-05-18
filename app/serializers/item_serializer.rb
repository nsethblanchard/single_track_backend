class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :price, :purchase_date, :bike_type, :avg_mileage, :customer_id
end
