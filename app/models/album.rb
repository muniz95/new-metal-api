class Album < ApplicationRecord
  belongs_to :user
  belongs_to :label
  belongs_to :album, optional: true
  has_many :participations
  has_many :discs
  has_many :lineups
  has_many :albums
  has_many :reviews
end
