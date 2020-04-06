class Category < ApplicationRecord
  validates :name, presence: true

  has_many :movies

  scope :sorted, -> { order(name: :asc) }
end
