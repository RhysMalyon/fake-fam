class Review < ApplicationRecord
  belongs_to :role
  validates :content, length: { minimum: 20 }
end
