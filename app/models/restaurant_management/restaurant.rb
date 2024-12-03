module RestaurantManagement
  class Restaurant < ApplicationRecord
    validates :name, presence: true
  end
end
