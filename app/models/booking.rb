class Booking < ApplicationRecord
  belongs_to :role
  belongs_to :user
  enum status: {
    pending: 0,
    approved: 1,
    declined: 2
  }, _prefix: true

  validates :start_time, :end_time, :location, :category, presence: true
end
