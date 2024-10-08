class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :user_id, uniqueness: {scope: :event_id, message: "already booked"}
  validates :status, inclusion: { in: ["not booked", "pending","booked!"]}

end
