class Conference < ApplicationRecord

  STATUS = ["cancelled", "pending", "validated"]

  belongs_to :user
  belongs_to :vice

  validates :date, presence: true
  validates :status, inclusion: { in: STATUS }
  validates :title: presence: true
end
