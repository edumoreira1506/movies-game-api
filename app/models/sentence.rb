class Sentence < ApplicationRecord
  validates :content, presence: true

  belongs_to :movie

  scope :game, -> { shuffle }
  scope :in_movies, -> (movies_ids) {
    where("movie_id IN (?)", movies_ids).shuffle
  }
end
