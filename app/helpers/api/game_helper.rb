module Api::GameHelper
  def fill_with_answers(sentences, movies = false)
    sentences.map{ |sentence| quizz_template(sentence, movies) }
  end

  private
    def quizz_template(sentence, movies = false)
      movie_of_sentence = sentence.movie

      right_answer = answer_template(movie_of_sentence, true)

      if (movies)
        other_movies = movies.select{ |movie| movie.id != movie_of_sentence.id }
        wrong_answers = other_movies.shuffle.first(4).map{ |movie| answer_template(movie, false) }
      else
        wrong_answers = Movie.different_movies(movie_of_sentence).map{ |movie| answer_template(movie, false) }
      end

      answers = wrong_answers + [right_answer]

      {
        sentence: sentence.content,
        id: sentence.id,
        answers: answers.shuffle
      }
    end

    def answer_template(movie, correct)
      {
        answer: movie.name,
        correct: correct,
        id: movie.id
      }
    end
end
