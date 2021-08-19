class BookingsController < ApplicationController
  def index
    @grouped_bookings = policy_scope(Booking).where(user: current_user).order(start_time: "ASC").group_by do |booking|
      booking.start_time.to_date > Date.today ? "upcoming" : "past"
    end
  end

  def new
    @booking = Booking.new
  end

  def create
    @role = Role.find(params[:role_id])
    @booking = Booking.new(booking_params)
    @booking.role = @role
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to bookings_path
    else
      render "roles/show"
    end
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.update(booking_params)
      redirect_to owner_bookings_path
    else
      render :index
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :location, :category, :status)
  end

end
