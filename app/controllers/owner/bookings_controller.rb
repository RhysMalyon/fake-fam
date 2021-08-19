class Owner::BookingsController < ApplicationController
  def index
    @grouped_bookings = policy_scope([:owner, Booking]).order(start_time: "ASC").group_by do |booking|
      booking.start_time.to_date > Date.today ? "upcoming" : "past"
    end
  end
end
