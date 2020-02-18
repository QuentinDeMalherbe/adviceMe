class Conference < ApplicationRecord

  STATUS = ["cancelled", "pending", "validated"]

  belongs_to :user
  belongs_to :vice

# Marceau 18/02 à decommenter
  # validates :date, presence: true
  # validates :status, inclusion: { in: STATUS }
  # validates :title, presence: true
end
