class CustomerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :store_id, :name, :phone, :bike_style, :store
end
