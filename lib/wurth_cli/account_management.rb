require_relative "../models/account"
require_relative "../models/account_table"

module WurthCLI
  class AccountManagement < Thor

    desc "create <name>", "Create an account denoted by <name>"
    def create name
      Account.create name: name, balance: 0
      puts "Created account #{name}"
    end

    desc "delete <name>", "Delete the account denoted by <name>"
    def delete name
      Account.find_by(name: name).delete
      puts "Deleted account #{name}"
    end

    desc "list", "Lists all accounts and their respective balance"
    def list
      accounts = Account.all
      puts AccountTable.new(accounts).to_table
    end

    desc "credit <account> <ammount>", "credits the given account with the given ammount"
    def credit account_name, value
      account = Account.find_by name: account_name
      account.balance -= value.to_f
      account.save
      puts "#{account.name} credited #{value}. New balance is #{account.balance}"
    end

    desc "debit <account> <ammount>", "debits the given account with the given ammount"
    def debit account_name, value
      account = Account.find_by name: account_name
      account.balance += value.to_f
      account.save
      puts "#{account.name} debited #{value}. New balance is #{account.balance}"
    end
  end
end

