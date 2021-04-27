class AdminsController < ApplicationController
  include SessionsHelper
  before_action :set_admin, only: %i[show edit update destroy]

  def show; end

  def new
    @admin = Admin.new
    # admin_check
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      log_in(@admin)
      flash[:primary] = 'You have signed up!'
      redirect_to root_path
    elsif Admin.exists?(username: @admin.username)
      flash[:danger] = 'Name is taken!'
      render 'new'
    else
      flash[:danger] = 'Something went wrong! Try again'
      render 'new'
    end
  end

  def edit; end

  def update
    if @admin.update(admin_params)
      flash[:primary] = 'Admin has been updated!'
      redirect_to root_path
    else
      flash[:danger] = 'Something went wrong!'
      render 'edit'
    end
  end

  def destroy
    if @admin.destroy
      flash[:info] = 'You are no longer Admin!'
    else
      flash[:danger] = 'Something went wrong!'
    end
    redirect_to root_path
  end

  private
  
  def set_admin
    @admin = Admin.find(
    params[:id]
    )
  end

  def admin_params
    params.require(:admin).permit(:username, :email, :password)
  end
end
