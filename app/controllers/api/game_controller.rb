class Api::GameController < Api::ApiController
  def index
    sentences = Sentence.game
    quizzes = helpers.fill_with_answers(sentences)

    render json: { ok: true, quizzes: quizzes }
  end
end
