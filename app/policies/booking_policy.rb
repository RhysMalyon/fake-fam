class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  private

  def user_is_owner
    user == record.user
  end
end
