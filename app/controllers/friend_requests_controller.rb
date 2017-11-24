class FriendRequestsController < ApplicationController
  before_action :set_profile, only: [:new, :create]

  def index
  end

  def new
    @friend_request = FriendRequest.new
    @profile = User.find(params[:profile_id])
  end

  def create
    @friend_request = FriendRequest.new(friend_requests_params)
    @friend_request.young_user = current_user
    @friend_request.old_user = @profile
    @friend_request.save ? (redirect_to dashboards_path) : (render :new)
  end

  private

  def set_profile
    @profile = User.find(params[:profile_id])
  end

  def friend_requests_params
    params.require(:friend_request).permit(:request_message)
  end
end
