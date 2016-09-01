require_relative "../initializers/activerecord"
require_relative "models/account"
require "thor"

class Wurth < Thor
  desc "init", "Initialize Wurth"
  def init
    puts "Wurth initialized"
  end

  desc "create", "Create a new thing"
  def create type, name
    Account.create name: name
    puts "Created account #{name}"
  end
end
