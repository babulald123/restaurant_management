require_relative "lib/restaurant_management/version"

Gem::Specification.new do |spec|
  spec.name        = "restaurant_management"
  spec.version     = RestaurantManagement::VERSION
  spec.authors     = [ "Babulal" ]
  # spec.email       = [ "" ]
  spec.homepage    = "https://github.com/babulald123/restaurant_management"
  spec.summary     = "Summary of RestaurantManagement."
  spec.description = "Description of RestaurantManagement."
  # spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/babulald123/restaurant_management"
  spec.metadata["changelog_uri"] = "https://github.com/babulald123/restaurant_management"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.2.2"
  spec.add_dependency 'fast_jsonapi'
  spec.add_dependency 'kaminari'
end
