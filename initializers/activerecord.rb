require "active_record"
require "yaml"

environment = ENV["RACK_ENV"]
db_config = YAML.load_file(File.expand_path("../../db/config.yml", __FILE__))[environment]

ActiveRecord::Base.establish_connection db_config
