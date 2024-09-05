class Service < ApplicationRecord
  validates :title, presence: true, inclusion: {in: []}
end
