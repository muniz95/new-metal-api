class Release < ApplicationRecord
  belongs_to :user
  belongs_to :label
  belongs_to :release, optional: true
  has_many :participations
  has_many :discs
  has_many :lineups
  has_many :releases
  has_many :reviews
end
