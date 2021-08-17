class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).group_by { |booking| booking.start_time.to_date }
  end
  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :location, :category)
  end

  def authorize_booking
    authorize @booking
  end
end
