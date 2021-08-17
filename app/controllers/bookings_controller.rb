class BookingsController < ApplicationController

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :location, :category)
  end

  def authorize_booking
    authorize @booking
  end
end
