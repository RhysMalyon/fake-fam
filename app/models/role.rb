class Role < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  belongs_to :user
  ROLES = ["mum", "dad", "girlfriend", "boyfriend", "sister", "brother", "aunty", "uncle", "son", "daughter", "grandpa", "grandma"]

  validates :name, :price, presence: true
  validates :price, numericality: true
  validates :name, inclusion: { in: ROLES }
end
