class RolesController < ApplicationController

  def index
    # @roles = Role.all
    @roles = policy_scope(Role)
  end





end
