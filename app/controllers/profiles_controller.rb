class ProfilesController < ApplicationController
  include ApplicationHelper
  before_action :require_admin
  before_action :set_profile, only: %i[edit update destroy]

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      flash[:primary] = 'Your new profile is now up!'
      redirect_to root_path
    else
      flash[:danger] = 'Something went wrong!'
      render 'new'
    end
  end

  def edit; end

  def update
    if @profile.update(profile_params)
      flash[:primary] = 'Your profile has been updated!'
      redirect_to root_path
    else
      flash[:danger] = 'Something went wrong!'
      render 'edit'
    end
  end

  def destroy
    if @profile.destroy
      flash[:info] = 'You deleted a profile!'
    else
      flash[:danger] = 'Something went wrong!'
    end
    redirect_to root_path
  end

  private

  def set_profile
    @profile = Profile.find(
    params[:id]
    )
  end

  def profile_params
    params.require(:profile).permit(:title, :body, :image)
  end
end
