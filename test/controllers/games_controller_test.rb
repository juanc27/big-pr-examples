require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  def test_index
    game_1
    game_2
    get games_path
    assert_response :success
    assert_select 'tr' do
      assert_select 'td:nth-child(1)', game_1.date.strftime('%a %m/%d %l:%M%P')
      assert_select 'td:nth-child(2)', game_1.home_team.name
      assert_select 'td:nth-child(3)', game_1.home_score.to_s
      assert_select 'td:nth-child(5)', game_1.away_team.name
      assert_select 'td:nth-child(6)', game_1.away_score.to_s
    end
  end

  def test_show
    game_1
    get game_path(game_1)
    assert_response :success
    assert_select 'tr' do
      assert_select 'td:nth-child(1)', game_1.date.strftime('%a %m/%d %l:%M%P')
      assert_select 'td:nth-child(2)', game_1.home_team.name
      assert_select 'td:nth-child(3)', game_1.home_score.to_s
      assert_select 'td:nth-child(5)', game_1.away_team.name
      assert_select 'td:nth-child(6)', game_1.away_score.to_s
    end
  end
end
