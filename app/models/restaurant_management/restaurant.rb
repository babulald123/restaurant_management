module RestaurantManagement
  class Restaurant < ApplicationRecord
    self.table_name = 'restaurants'
    validates :name, presence: true
  end
end
