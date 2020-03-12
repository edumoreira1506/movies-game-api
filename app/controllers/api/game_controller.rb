class Api::GameController < Api::ApiController
  def index
    render json: { ok: true }
  end
end
