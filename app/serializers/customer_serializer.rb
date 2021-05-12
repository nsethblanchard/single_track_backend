class CustomerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :store_id, :name, :email, :phone, :stravaURL, :bikeStyle, :store
end
