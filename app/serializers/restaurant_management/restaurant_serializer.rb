module RestaurantManagement
  class RestaurantSerializer
    include FastJsonapi::ObjectSerializer

    attributes :id, :name, :opening_time, :closing_time, :created_at, :updated_at
  end
end
