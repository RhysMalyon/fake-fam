class Owner::BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.all
      user.bookings_as_owner
    end
  end
end
