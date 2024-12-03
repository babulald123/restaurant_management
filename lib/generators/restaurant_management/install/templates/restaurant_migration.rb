class CreateRestaurants < ActiveRecord::Migration[<%= migration_version %>
  def change
    create_table :restaurants do |t|
      t.string :name
      t.time :opening_time
      t.time :closing_time

      t.timestamps
    end
  end
end
