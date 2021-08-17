class RolesController < ApplicationController
  before_action :set_role, only: :show

  def show
    @role = policy_scope(Role)
    @user = User.new
    authorize @role
  end

  private

  def role_params
    params.require(:role).permit(:role, :price, :bio)
  end

  def set_role
    @role = Role.find(params[:id])
  end
end
