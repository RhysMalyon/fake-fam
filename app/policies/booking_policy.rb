class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.all
      user.bookings
    end
  end

  private

  def user_is_owner?
    user == record.user
  end
end
