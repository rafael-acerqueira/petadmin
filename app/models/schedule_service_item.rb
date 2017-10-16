class ScheduleServiceItem < ApplicationRecord
  belongs_to :service
  enum status: { Waiting: 0, Done: 1, Canceled: 2 }

  validates :service, :status, :date, presence: true
end
