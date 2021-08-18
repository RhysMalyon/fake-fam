class RolesController < ApplicationController
  before_action :set_role, only: :show
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    # @roles = Role.all
    if params[:name].present?
      @roles = policy_scope(Role).where(name: params[:name].downcase)
    else
      @roles = policy_scope(Role)
    end
  end

  def show
    @user = @role.user
    @booking = Booking.new
    authorize @role
  end

  private

  def role_params
    params.require(:role).permit(:name, :price, :bio)
  end

  def set_role
    @role = Role.find(params[:id])
  end
end
