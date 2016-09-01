require "thor"
require_relative "../initializers/activerecord"
require_relative "models/account"
require_relative "wurth_cli/account_management"


module WurthCLI
  class Wurth < Thor
    desc "init", "Initialize Wurth"
    def init
      puts "Wurth initialized"
    end

    desc "account SUBCOMMAND ...ARGS", "manage accounts"
    subcommand "account", AccountManagement
  end
end
