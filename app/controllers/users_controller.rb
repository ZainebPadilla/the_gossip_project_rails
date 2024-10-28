class UsersController < ApplicationController
  def user_profile
    @user = User.find params[:user_id]
  end
end