class Api::RankingController < ApplicationController
  def index
    ranking = RankingUser.sorted

    render json: { ok: true, ranking: ranking }
  end
end
