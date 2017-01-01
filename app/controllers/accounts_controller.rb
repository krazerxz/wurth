class AccountsController < ApplicationController
  def index
    @account_facade = AccountFacade.new Account.all
  end

  def edit
    @account = Account.find(params[:id])
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
    @account = Account.new account_params.merge(seed)
    @account.save ? redirect_to(accounts_path) : render(:new)
  end

  def update
    @account = Account.find(params[:id])
    if @account.update(account_params)
      redirect_to accounts_path
    else
      flash_and_render "Count not update account balance", :edit
    end
  end

  private

  def seed
    { seed: SecureRandom.random_number(1_000) }
  end

  def account_params
    params.require(:account).permit(:name, :balance)
  end
end
