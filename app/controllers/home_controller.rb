class HomeController < ApplicationController
  include SessionsHelper
  def index
    current_admin
    @profiles = Profile.all
    @mains = Main.all
  end
end
