class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.all
      user.bookings
    end
  end

  def update?
    user_is_owner? || user == record.role.user
  end

  def destroy?
    user == record.user
  end

  private

  def user_is_owner?
    user == record.user
  end
end
