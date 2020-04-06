class Api::CategoryController < Api::ApiController
  def index
    categories = Category.all

    render json: { ok: true, categories: categories }
  end
end
