class Band < ApplicationRecord
  belongs_to :band_status
  belongs_to :label
  belongs_to :country
  belongs_to :user
  has_many :participations, dependent: :nullify
  has_many :roles, dependent: :nullify
  has_many :links, dependent: :nullify
  has_many :similarities,
    dependent: :nullify,
    class_name: "Similarity",
    foreign_key: "left_band_id",
    inverse_of: :left_band
end
