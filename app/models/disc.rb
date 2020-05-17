class Disc < ApplicationRecord
  belongs_to :release
  has_many :songs
end
