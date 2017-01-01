class AccountsController < ApplicationController
  def index
    @accounts = Account.all
    @total_balance = @accounts.map(&:balance).inject(&:+)
  end
end
