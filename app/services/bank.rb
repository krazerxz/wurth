class Bank
  def self.credit name:, value:
    account = Account.find_by name: name
    account.balance -= value.to_f
    account.save
    Rails.logger.info "#{account.name} debited #{value}. New balance is #{account.balance}"
  end

  def self.debit name:, value:
    account = Account.find_by name: name
    account.balance += value.to_f
    account.save
    Rails.logger.info "#{account.name} debited #{value}. New balance is #{account.balance}"
  end

  def self.create name:, balance: 0
    Account.create name: name, balance: balance
    Rails.logger.info "Created account #{name}"
  end

  def self.delete name:
    Account.find_by(name: name).delete
    Rails.logger.info "Deleted account #{name}"
  end

  def self.wealth
    Account.all.map(&:balance).inject(&:+)
  end
end
