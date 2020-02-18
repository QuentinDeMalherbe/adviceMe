class Vice < ApplicationRecord

  CATEGORIES = ["déviance sexuelle", "détournement de biens publics", "politic bastards"]

  belongs_to :user
  has_many :conferences
  has_one_attached :photo

# TODO: à decommenter Marceau 17/02
  # validates :name, presence: true
  # validates :category, inclusion: {in: CATEGORIES}
  # #TODO validation disponibility
  # validates :price, presence: true
end
