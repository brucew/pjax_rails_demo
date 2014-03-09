class PlayersController < ApplicationController
  respond_to :html

  def index
    @season = Season.from_param(params[:season_id])
    @players = @season.players.includes(:team).page(params[:page]).per(10)
    respond_with(@players)
  end
end
