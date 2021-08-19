class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    user_is_owner?
  end

  private

  def user_is_owner?
    user == record
  end
end
