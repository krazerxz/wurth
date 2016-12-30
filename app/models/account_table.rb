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
