class GamesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end
end
