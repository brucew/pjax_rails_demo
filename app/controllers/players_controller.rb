class PlayersController < ApplicationController
  respond_to :html

  def index
    @season = Season.from_param(params[:season_id])
    @players = @season.players.includes(:team)#.order(@order).page params[:page]
    respond_with(@players)
  end
end
