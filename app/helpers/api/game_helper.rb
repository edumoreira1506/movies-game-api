module Api::GameHelper
  def fill_with_answers(sentences)
    sentences.map{ |sentence| quizz_template(sentence) }
  end

  private
    def quizz_template(sentence)
      movie_of_sentence = sentence.movie

      right_answer = answer_template(movie_of_sentence, true)
      wrong_answers = Movie.different_movies(movie_of_sentence).map{ |movie| answer_template(movie, false) }

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
