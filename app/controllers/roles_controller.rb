class RolesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    # @roles = Role.all
    if params[:name].present?
      @roles = policy_scope(Role).where(name: params[:name].downcase)
    else
      @roles = policy_scope(Role)
    end
  end





end
