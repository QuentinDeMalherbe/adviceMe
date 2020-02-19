class Vice < ApplicationRecord

  CATEGORIES = ["Déviance sexuelle", "Détournement de biens publics", "Politic bastards"]

  belongs_to :user
  has_many :conferences
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
# TODO: à decommenter Marceau 17/02
  # validates :name, presence: true
  # validates :category, inclusion: {in: CATEGORIES}
  # #TODO validation disponibility
  # validates :price, presence: true
end
