class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def flash_and_redirect message, path
    flash[:success] = message
    redirect_to path
  end

  def flash_and_render message, route
    flash.now[:danger] = message
    render route
  end
end
