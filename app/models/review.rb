class Review < ApplicationRecord
  belongs_to :roles
  validates :content, length: { minimum: 20 }
end
