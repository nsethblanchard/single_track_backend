class StoreSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :phone, :city, :customers 
  # this allows us to see the attributes for the stores on json
  # otherwise you just see id and type

  # instead of adding associated customers here, 
  # you can put the has_many :customers here and
  # put the options hash in the controller action
end
