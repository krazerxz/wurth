require_relative "../models/account"
require 'terminal-table'

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

    desc "list", "Lists all accounts and their respective balance"
    def list
      accounts = Account.all
      puts AccountTable.new(accounts).to_table
    end
  end
end

class AccountTable
  def initialize accounts
    @accounts = accounts
  end

  def to_table
    rows = []
    rows << Account.attribute_names
    @accounts.all.each do |account|
      rows << account.attributes.values
    end
    Terminal::Table.new rows: rows
  end
end
