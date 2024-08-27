class Event < ApplicationRecord
  belongs_to :user
  validates :category, presence: true
  validates :ending_day, comparison: { greater_than_or_equal_to: :starting_day }
  validates :description, length: {minimum: 10}
end
