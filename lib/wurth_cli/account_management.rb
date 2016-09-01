module WurthCLI
  class AccountManagement < Thor

    desc "create <name>", "Create an account denoted by <name>"
    def create name
      Account.create name: name
      puts "Created account #{name}"
    end

    desc "delete <name>", "Delete the account denoted by <name>"
    def delete name
      Account.find_by(name: name).delete
      puts "Deleted account #{name}"
    end
  end
end
