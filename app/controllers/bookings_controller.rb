class BookingsController < ApplicationController
  before_action :set_booking, only: %i[edit update destroy]

  def index
    @grouped_bookings = policy_scope(Booking).order(start_time: "ASC").group_by do |booking|
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

  def edit
  end

  def update
    authorize @booking
    if @booking.update(booking_params)
      redirect_to owner_bookings_path
    else
      render :index
    end
  end

  def destroy
    authorize @booking
    @booking.destroy
    redirect_to bookings_url, notice: 'Your booking was successfully deleted'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :location, :category, :status)
  end

end
