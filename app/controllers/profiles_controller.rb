class ProfilesController < ApplicationController

  def index
    raise
    @profiles = User.all
  end

  def show
    @profile = User.find(params[:id])
  end

  def update
  end

  def edit
  end
end
