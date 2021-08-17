class RolesController < ApplicationController
  def show; end

  private

  def role_params
    params.require(:role).permit(:role, :price, :bio)
  end

  def set_role
    @role = Role.find(params[:id])
  end
end
