class PlayersController < ApplicationController
  respond_to :html

  def index
    @search = params[:search]

    @season = Season.from_param(params[:season_id])
    @players = @season.players.where('surname LIKE ?', "#{@search}%").includes(:team).page(params[:page]).per(10)
    @player = Player.find(params[:player_id]) if params[:player_id]
    respond_with(@players)
  end
end
