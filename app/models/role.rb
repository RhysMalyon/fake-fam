class Role < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  ROLES = ["Mum", "Dad", "Girlfriend", "Boyfriend", "Sister", "Brother", "Aunty", "Uncle", "Son", "Daughter", "Niece", "Nephew", "Grandpa", "Grandma"]

  validates :role, :price, presence: true
  validates :price, numericality: true
  validates :role, inclusion: { in: ROLES }
end
