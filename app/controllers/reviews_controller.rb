class ReviewsController < ApplicationController
  def create
    @role = Role.find(params[:role_id])
    @review = Review.new(review_params)
    @review.role = @role
    if @review.save
      redirect_to role_path(@role)
    else
      render 'roles/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
