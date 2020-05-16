class Release < ApplicationRecord
  belongs_to :user
  belongs_to :label
  has_many :participations
end
