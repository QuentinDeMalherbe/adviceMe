class Vice < ApplicationRecord
  CATEGORIES = ["Scandale sexuel", "Détournement de biens publics", "Politic bastards", "Désastre écologique"]

  belongs_to :user
  has_many :conferences
  has_many :ratings
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  paginates_per 6

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :category, :address ],
    associated_against: {
      user: [ :first_name, :last_name ]
    },
    using: {
      tsearch: { prefix: true }
    }
# TODO: à decommenter Marceau 17/02
  # validates :name, presence: true
  # validates :category, inclusion: {in: CATEGORIES}
  # #TODO validation disponibility
  # validates :price, presence: true
end
