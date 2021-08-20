class AddUserToReviews < ActiveRecord::Migration[6.0]
  def change
    Review.destroy_all
    add_reference :reviews, :user, null: false, foreign_key: true
  end
end
