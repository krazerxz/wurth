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
