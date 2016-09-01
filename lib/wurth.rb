require_relative "../initializers/activerecord"
require_relative "models/account"
require "thor"

class Wurth < Thor
  desc "init", "Initialize Wurth"
  def init
    puts "Wurth initialized"
  end

  desc "account", "account manipulation [create delete rename list]"
  def account _action, name
    Account.create name: name
    puts "Created account #{name}"
  end
end
