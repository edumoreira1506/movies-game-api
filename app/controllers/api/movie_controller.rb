class Api::MovieController < Api::ApiController
  AMOUNT_OF_SENTENCES = 5

  def index
    category = Category.find(params[:id])
    movies_ids = category.movies.map { |movie| movie.id }
    sentences = Sentence.in_movies(movies_ids).first(AMOUNT_OF_SENTENCES)
    quizzes = helpers.fill_with_answers(sentences)

    render json: { ok: true, quizzes: quizzes }
  end
end
