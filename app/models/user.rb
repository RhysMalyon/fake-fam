class User < ApplicationRecord
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :roles
  has_many :bookings_as_owner, through: :roles, source: :bookings

  # validates :first_name, :last_name, :age, :location, presence: true
  # validates :age, numericality: { greater_than_or_equal_to: 18 }
end
