class Artist < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :country, optional: true
  has_many :roles, dependent: :nullify
  has_many :lineups, dependent: :nullify
  has_many :links, dependent: :nullify
end
