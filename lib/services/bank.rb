class Bank
  def self.credit name:, value:
    account = Account.find_by name: name
    account.balance -= value.to_f
    account.save
    puts "#{account.name} debited #{value}. New balance is #{account.balance}"
  end

  def self.debit name:, value:
    account = Account.find_by name: name
    account.balance += value.to_f
    account.save
    puts "#{account.name} debited #{value}. New balance is #{account.balance}"
  end


  def self.create name:, balance: 0
    Account.create name: name, balance: balance
    puts "Created account #{name}"
  end

  def self.delete name:
    Account.find_by(name: name).delete
    puts "Deleted account #{name}"
  end
end
