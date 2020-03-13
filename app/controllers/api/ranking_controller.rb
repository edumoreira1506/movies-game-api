class Api::RankingController < Api::ApiController
  def index
    ranking = RankingUser.sorted

    render json: { ok: true, ranking: ranking }
  end

  def create
    ranking_user = RankingUser.new(name: params[:name], points: params[:points])
    ranking_user.save!

    render json: { ok: true, ranking_user: ranking_user }
  end
end
