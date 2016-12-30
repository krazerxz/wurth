module WurthCLI
  class AccountManagement < Thor

    desc "create <name>", "Create an account denoted by <name>"
    def create name
      Bank.create name: name
    end

    desc "delete <name>", "Delete the account denoted by <name>"
    def delete name
      Bank.delete name: name
    end

    desc "list", "Lists all accounts and their respective balance"
    def list
      accounts = Account.all
      puts AccountTable.new(accounts).to_table
    end

    desc "credit <account> <ammount>", "credits the given account with the given ammount"
    def credit account_name, value
      Bank.credit name: account_name, value: value
    end

    desc "debit <account> <ammount>", "debits the given account with the given ammount"
    def debit account_name, value
      Bank.debit name: account_name, value: value
    end

    desc "wealth", "shows the net value held across all accounts"
    def wealth
      puts Bank.wealth
    end
  end
end

