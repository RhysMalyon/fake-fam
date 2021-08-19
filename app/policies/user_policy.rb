class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def edit?
    true
  end

  private

  def user_is_owner?
    user == record.user
  end
end
