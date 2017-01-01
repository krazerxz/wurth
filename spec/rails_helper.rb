ENV["RACK_ENV"] = "test"

require File.expand_path("../../config/environment", __FILE__)

abort("The Rails environment is running in production mode!") if Rails.env.production?
require "spec_helper"
require "rspec/rails"

Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f }

ActiveRecord::Migration.maintain_test_schema!
