class ProfilesController < ApplicationController

  before_action :set_profile, only: [:show, :edit, :update]
  def index
    @profiles = User.all
  end

  def show
  end

  def edit
  end

  def update
    @profile.update(profile_params)
    @profile.save ? (redirect_to profile_path(@profile)) : (render :edit)
  end

  private

  def set_profile
    @profile = User.find(params[:id])
  end

  def profile_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :bio, :motivation, :location)
  end

end
