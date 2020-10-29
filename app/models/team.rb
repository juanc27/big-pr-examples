class Team < ActiveRecord::Base
  has_many :home_games, class_name: 'Game', foreign_key: 'home_team_id', inverse_of: 'home_team'
  has_many :away_games, class_name: 'Game', foreign_key: 'away_team_id', inverse_of: 'away_team'

  def home_wins
    home_games.where('home_score > away_score').count
  end

  def away_wins
    away_games.where('away_score > home_score').count
  end

  def home_losses
    home_games.where('home_score < away_score').count
  end

  def away_losses
    away_games.where('away_score < home_score').count
  end

  def wins
    home_wins + away_wins
  end

  def losses
    home_losses + away_losses
  end

  def wining_pct
    total = wins + losses
    return 0 unless total.positive?

    1.0 * wins / total
  end
end
