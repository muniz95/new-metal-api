class Band < ApplicationRecord
  belongs_to :band_status
  belongs_to :label
  belongs_to :country
  belongs_to :user
  has_many :participations
  has_many :roles
  has_many :similarities, class_name: "Similarity", foreign_key: "left_band_id"
end
