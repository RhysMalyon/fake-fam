class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit]
  
  def show
    authorize @user
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :location, :photo)
  end

  def authorize_user
    authorize @user
  end

  def set_user
    @user = User.find(params[:id])
  end
end
