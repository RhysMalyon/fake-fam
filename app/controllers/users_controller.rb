class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update]

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'Your profile has been updated'
    else
      render :edit
    end
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :bio, :location, :photo)
  end

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end
end
