class MainsController < ApplicationController
  include ApplicationHelper
  before_action :require_admin
  before_action :set_main, only: %i[edit update]

  def new
    @main = Main.new
  end

  def create
    @main = Main.new(main_params)
    if @main.save
      flash[:primary] = 'Your new main is now up!'
      redirect_to root_path
    else
      flash[:danger] = 'Something went wrong!'
      render 'new'
    end
  end

  def edit; end

  def update
    if @main.update(main_params)
      flash[:primary] = "Main section has been updated"
      redirect_to root_path
    else
      flash[:danger] = "Something went wrong"
      render 'edit'
    end
  end

  private

  def set_main
    @main = Main.find(
    params[:id]
    )
  end

  def main_params
    params.require(:main).permit(:head, :body, :image)
  end
end
