class OwnerBookingsController < ApplicationController
  before_action :set_booking, only: [:update]
  def index
    @grouped_bookings = policy_scope(Booking).order(start_time: "ASC").group_by do |booking|
      booking.start_time.to_date > Date.today ? "upcoming" : "past"
    end
  end

  def update
    if @booking.update(booking_params)
      redirect_to owner_bookings_path(@booking)
    else
      render :index
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :location, :category)
  end

  def authorize_booking
    authorize @booking
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
