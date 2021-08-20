class ReviewsController < ApplicationController
  def create
    @role = Role.find(params[:role_id])
    @review = Review.new(review_params)
    @review.role = @role
    authorize @review
    if @review.save
      respond_to do |format|
        format.html { redirect_to role_path(@role) }
        format.js # by default, will render reviews/create.js.erb
      end
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
