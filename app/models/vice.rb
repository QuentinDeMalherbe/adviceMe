class Vice < ApplicationRecord
  belongs_to :user
  has_many :conferences
end
