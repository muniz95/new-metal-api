class Country < ApplicationRecord
  has_many :bands, dependent: :nullify
end
