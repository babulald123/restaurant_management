Rails.application.routes.draw do
  mount RestaurantManagement::Engine => "/restaurant_management"
end
