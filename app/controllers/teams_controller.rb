class TeamsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end
end
