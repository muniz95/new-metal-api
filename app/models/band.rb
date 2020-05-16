class Band < ApplicationRecord
  belongs_to :band_status
  belongs_to :label
  belongs_to :country
  belongs_to :user
  has_many :participations
end
