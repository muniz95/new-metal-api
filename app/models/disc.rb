class Disc < ApplicationRecord
  belongs_to :album
  has_many :songs, dependent: :nullify
end
