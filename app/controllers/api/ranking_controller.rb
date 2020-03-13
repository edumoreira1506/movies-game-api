class Api::RankingController < Api::ApiController
  def index
    ranking = RankingUser.sorted

    render json: { ok: true, ranking: ranking }
  end

  def create
    name = params[:name]
    points = params[:points]

    if RankingUser.exists?(["lower(name) = ?", name.downcase])
      ranking_user = RankingUser.where(["lower(name) = ?", name.downcase])
      ranking_user = ranking_user[0]
      ranking_user.points = points
      ranking_user.save!

      render json: { ok: true, ranking_user: ranking_user }
    else
      ranking_user = RankingUser.new(name: name, points: points)
      ranking_user.save!

      render json: { ok: true, ranking_user: ranking_user }
    end
  end
end
