class Api::GameController < Api::ApiController
  AMOUNT_OF_SENTENCES = 5

  def index
    sentences = Sentence.game.first(AMOUNT_OF_SENTENCES)
    quizzes = helpers.fill_with_answers(sentences)

    render json: { ok: true, quizzes: quizzes }
  end
end
