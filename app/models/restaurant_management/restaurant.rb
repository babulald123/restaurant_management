module RestaurantManagement
  class Restaurant < ApplicationRecord
    self.table_name = 'restaurants'
    validates :name, presence: true

    paginates_per 10
    max_paginates_per 25
  end
end
