class Artist < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :country, optional: true
  has_many :roles
  has_many :lineups
end
