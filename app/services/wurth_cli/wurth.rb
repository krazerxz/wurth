require "thor"

module WurthCLI
  class Wurth < Thor
    desc "init", "Initialize Wurth"
    def init
      Rails.logger.info "Wurth initialized"
    end

    desc "account SUBCOMMAND ...ARGS", "manage accounts"
    subcommand "account", AccountManagement
  end
end
