class ReviewsController < ApplicationController
  def create
    @role = Role.find(params[:role_id])
    @review = Review.new(review_params)
    @review.role = @role
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to role_path(@role, anchor: "new_booking")
    else
      @user = current_user
      @booking = Booking.new
      render 'roles/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
