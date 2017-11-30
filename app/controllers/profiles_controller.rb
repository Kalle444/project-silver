class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  before_action :set_profile, only: [:show, :edit, :update]

  def index
    # raise
    @location = params[:location]
    @radius = 20
    @interests = Interest.all
    @profiles_interest = return_profiles_based_on_location(@location, @radius)
    if params.has_key? "filter"
      @selected_interests = params[:filter][:interest_ids]
      @profiles_interest = return_profiles_based_on_interests(@profiles_interest)
    end

    respond_to do |format|
            format.html { @profiles_interest}
            format.js  # <-- will render `app/views/reviews/index.js.erb`
    end

  end

  def show
    @friend_request = FriendRequest.where(young_user: current_user, old_user: @profile).exists?
  end

  def edit
  end

  def update
    update_user_interests(params[:user][:interest_ids])
    @profile.update(profile_params)
    @profile.save ? (redirect_to dashboards_path) : (render :edit)
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

  # 1. Compare selected interests and interests of profiles
  # 2. Check how many interests match, get the number
  # 3. Order the profiles by the numbers of matched interests, highest number first
  def return_profiles_based_on_interests(profiles)
    profiles.sort_by do |profile|
      getMatchingInterests(profile).size
    end.reverse
  end

  def getMatchingInterests(profile)
    selectedInterests = []
    profileInterests = []
    @selected_interests.each do |si|
      selectedInterests << si.to_i
    end
    UserInterest.where(user: profile).each do |ui|
      profileInterests << ui.interest.id
    end
    return profileInterests & selectedInterests
  end
end
