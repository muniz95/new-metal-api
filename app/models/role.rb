class Role < ApplicationRecord
  belongs_to :band
  belongs_to :artist
end
