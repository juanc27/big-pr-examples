class StandingsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @teams = Team.all.map do |team|
      team.as_json.merge(wins: team.wins, losses: team.losses, wining_pct: team.wining_pct)
    end
    @teams.sort_by! { |k| k[:win_pct] }
  end

  def show
    @team = Team.find(params[:id])
  end
end
