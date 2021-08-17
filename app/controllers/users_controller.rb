class UsersController < ApplicationController

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :location)
  end

  def authorize_user
    authorize @user
  end
end
