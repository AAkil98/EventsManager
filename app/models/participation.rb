class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :status, presence: true
  validates :capacity, numericality: { only_integer: true }
  validates :event_id, uniqueness: {scope: :user_id, message: "already booked"}
end
