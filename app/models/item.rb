class Item < ApplicationRecord
  validates :name, presence: true
  validates :category, inclusion: { in: %w(personal electronic clothing),
    message: "%{value} is not a valid choice!" }
end
