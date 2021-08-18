class UsersController < ApplicationController

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :location, :photo)
  end

  def authorize_user
    authorize @user
  end
end
