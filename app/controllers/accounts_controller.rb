class AccountsController < ApplicationController
  def index
    @accounts = Account.all
    @total_balance = @accounts.map(&:balance).inject(&:+)
  end

  def destroy
    account = Account.find(device_params[:id])
    account.delete
    flash[:notice] = "Removed account #{account.name}"
    redirect_to accounts_path
  end

  def new

  end

  private

  def device_params
    params.permit(:id)
  end
end
