class Event < ApplicationRecord
  belongs_to :user
  has_many :participations
  has_one_attached :photo

  validates :category, presence: true,  inclusion: {in: ["Party", "Visit", "Entertainment"]}
  validates :ending_day, comparison: { greater_than_or_equal_to: :starting_day }
  validates :description, length: {minimum: 10}
  validates :mode, inclusion: {in: ["Public", "Private"]}, presence: true
  validates :title, presence: true, length: {maximum: 50, minimum: 10}
end
