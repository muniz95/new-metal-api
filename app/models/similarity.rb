class Similarity < ApplicationRecord
  belongs_to :left_band, class_name: "Band"
  belongs_to :right_band, class_name: "Band"
end
