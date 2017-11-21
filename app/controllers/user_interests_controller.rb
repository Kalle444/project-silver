class UserInterestsController < ApplicationController
  def index
    @user_interests = UserInterest.all
  end

  def new
    @user_interest = UserInterest.new
  end

  def create
    @user_interest = UserInterest.new(user_interest_params)
    @user_interest.user = current_user
    @user_interest.save
    redirect_to(user_interests_path)
  end

  def destroy
    @user_interest = UserInterest.find(params[:id])
    @user_interest.destroy
    redirect_to(user_interests_path)
  end

  def user_interest_params
    params.require(:user_interest).permit(:interest_id)
  end
end
