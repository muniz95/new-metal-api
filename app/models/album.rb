class Album < ApplicationRecord
  belongs_to :user
  belongs_to :label
  belongs_to :album, optional: true
  has_many :participations, dependent: :nullify
  has_many :discs, dependent: :nullify
  has_many :lineups, dependent: :nullify
  has_many :albums, dependent: :nullify
  has_many :reviews, dependent: :nullify
end
