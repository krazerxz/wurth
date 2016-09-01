require_relative "../initializers/activerecord"
require_relative "models/account"
require "thor"

class Wurth < Thor
  desc "init", "Initialize Wurth"
  def init
    puts "Wurth initialized"
  end

  desc "account", "account manipulation [create delete rename list]"
  def account action, name
    if action == "create"
      Account.create name: name
      puts "Created account #{name}"
    elsif action == "delete"
      Account.find_by(name: name).delete
      puts "Deleted account #{name}"
    end
  end
end
