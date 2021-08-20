class Review < ApplicationRecord
  belongs_to :role
  belongs_to :user
  validates :content, length: { minimum: 20 }
end
