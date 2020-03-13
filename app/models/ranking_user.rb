class RankingUser < ApplicationRecord
  validates :name, :points, presence: true

  scope :sorted, -> { order(points: :desc) }
end
