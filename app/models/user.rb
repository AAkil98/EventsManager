class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events
  has_many :participations
  has_many :participated_events, through: :participations, source: :event

  validates :status, presence: true, inclusion: {in: ["owner", "client"]}, unless: :first_user?

  before_validation :set_first_user_as_admin, on: :create

  def admin?
    self.admin == true
  end

  def owner?
    status == "owner"
  end

  def client?
    status == "client"
  end

  private

  def first_user?
    User.count.zero? || self == User.first
  end

  def set_first_user_as_admin
    if first_user?
      self.admin = true
      self.status = nil
    end
  end
end
