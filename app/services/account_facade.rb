class AccountFacade
  attr_reader :accounts

  def initialize accounts
    @accounts = accounts
  end

  def total_balance
    @accounts.map(&:balance).inject(&:+)
  end

  def accounts_graph_data
    @account_balance_data = {
      labels: ["Now"],
      datasets: accounts_data
    }
  end

  def accounts_graph_options
    {
      height: 200
    }
  end

  private

  def accounts_data
    @accounts.map do |account|
      {
        label: account.name,
        data: [account.balance],
        borderColor: colour_for(account.id),
        pointBorderColor: colour_for(account.id)
      }
    end
  end

  def colour_for name
    ColorGenerator.new(saturation: 0.3, value: 1.0, seed: name).create_hex
  end
end
