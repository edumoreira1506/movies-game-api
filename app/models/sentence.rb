class Sentence < ApplicationRecord
  AMOUNT_OF_SENTENCES = 5

  validates :content, presence: true

  belongs_to :movie

  scope :game, -> { limit(AMOUNT_OF_SENTENCES).shuffle }
end
