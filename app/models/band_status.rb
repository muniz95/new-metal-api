class BandStatus < ApplicationRecord
    has_many :bands, dependent: :nullify
end
