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
