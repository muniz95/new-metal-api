class Label < ApplicationRecord
  belongs_to :country
  belongs_to :user
  has_many :links, dependent: :nullify
end
