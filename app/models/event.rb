class Event < ApplicationRecord
  belongs_to :user
  has_many :participations

  validates :category, presence: true
  validates :ending_day, comparison: { greater_than_or_equal_to: :starting_day }
  validates :description, length: {minimum: 10}
  validates :mode, inclusion: {in: ["Public", "Private"]}, presence: true

end
