class Event < ApplicationRecord
  belongs_to :user
  has_many :participations
  has_many :participants, through: :participations, source: :user
  has_one_attached :photo

  validates :title, presence: true, length: {maximum: 50, minimum: 10}
  validates :category, presence: true,  inclusion: {in: ["Festival", "Sports", "Entertainment", "Party", "Conference", "Concert"]}
  validates :ending_day, comparison: { greater_than_or_equal_to: :starting_day }
  validates :description, length: {minimum: 10}
  validates :mode, inclusion: {in: ["Public", "Private"]}, presence: true
  validates :capacity, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :photo, presence: true

  validate :photo_attached
  #validates :status, presence: true, inclusion: { in: ["seats available", "unavailable"]}

  # before_save :update_status

  # def update_status
  #   self.status = capacity.positive? ? "seats available" : "unavailable"
  # end
  private

  def photo_attached
    errors.add(:photo, 'must be attached') unless photo.attached?
  end
end
