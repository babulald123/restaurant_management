module RestaurantManagement
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.expand_path("templates", __dir__)

      def self.next_migration_number(dirname)
        @last_migration_number ||= Time.now.utc.strftime("%Y%m%d%H%M%S").to_i

        @last_migration_number += 1
        @last_migration_number.to_s
      end

      def create_migrations
        migration_template "restaurant_migration.rb", "db/migrate/create_restaurants.rb", migration_version: migration_version
      end

      def add_routes
        route "mount RestaurantManagement::Engine, at: '/'"
      end

      def migration_version
        "[#{Rails::VERSION::MAJOR}.#{Rails::VERSION::MINOR}]"
      end
    end
  end
end
