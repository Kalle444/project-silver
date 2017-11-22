class ProfilesController < ApplicationController

  before_action :set_profile, only: [:show, :edit, :update]
  def index
    @location = params[:location]
    @radius = 20
    @profiles = return_profiles_based_on_location(@location, @radius)
  end

  def show
  end

  def edit
  end

  def update
    update_user_interests(params[:user][:interest_ids])
    @profile.update(profile_params)
    @profile.save ? (redirect_to profile_path(@profile)) : (render :edit)
  end

  private


  def set_profile
    @profile = User.find(params[:id])
  end

  def profile_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :bio, :motivation, :location, :profile_picture, :background_picture)
  end

  def return_profiles_based_on_location(location, radius)
    if location == "" || location.nil?
      User.where.not(latitude: nil, longitude: nil)
    else
      User.near(location, radius)
    end
  end

  def update_user_interests(interests)
    current_user.user_interests.destroy_all
    interests.each do |interest_id|
      if interest_id != "" || interest_id.nil?
        interest = Interest.find(interest_id)
        user_interest = UserInterest.new(interest: interest)
        user_interest.user = current_user
        user_interest.save
      end
    end
  end
end
