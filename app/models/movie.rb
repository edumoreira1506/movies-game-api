class Movie < ApplicationRecord
  AMOUNT_OF_MOVIES = 4

  validates :name, presence: true

  scope :different_movies, -> (movie) {
    where("id <> ?", movie.id).limit(AMOUNT_OF_MOVIES)
  }
end
