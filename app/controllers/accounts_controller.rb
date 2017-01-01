class AccountsController < ApplicationController
  def index
    @accounts = Account.all
    @total_balance = @accounts.map(&:balance).inject(&:+)
  end

  def destroy
    account = Account.find(params[:id])
    account.delete
    flash[:notice] = "Removed account #{account.name}"
    redirect_to accounts_path
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new account_params
    @account.save ? redirect_to(accounts_path) : render(:new)
  end

  private

  def account_params
    params.require(:account).permit(:name, :balance)
  end
end
