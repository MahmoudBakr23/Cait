class SessionsController < ApplicationController
  include SessionsHelper

  def new
    admin_check
  end

  def create
    admin = Admin.find_by(password: params[:sessions][:password], email: params[:sessions][:email])
    if admin
      log_in(admin)
      flash[:primary] = 'You have logged in!'
      redirect_to root_path
    else
      flash[:danger] = 'Something went wrong!'
      render 'new'
    end
  end

  def destroy
    log_out
    flash[:primary] = 'You have logged out!'
    redirect_to root_path
  end
end
