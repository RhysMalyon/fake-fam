class BookingsController < ApplicationController
  def index
    @grouped_bookings = policy_scope(Booking).order(start_time: "ASC").group_by do |booking|
      booking.start_time.to_date > Date.today + 19 ? "upcoming" : "past"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :location, :category)
  end

  def authorize_booking
    authorize @booking
  end
end
