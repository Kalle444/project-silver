class FriendRequestsController < ApplicationController

  def new
    @friend_requests = FriendRequest.new
    @profile = User.find(params[:profile_id])
  end

  def create
    # @young_user = current_user
    # @old_user = User.find(params[:user_id])
    # @friend_requests = FriendRequest.new(friend_requests_params)
    # @friend_requests.young_user = @young_user
    # @friend_requests.old_user = @old_user

    # if @friend_requests.save
  end

  def index
  end

  private

  def friend_requests_params
    params_require(friend_requests).permit(:request_message)
  end
end
