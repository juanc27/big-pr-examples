require 'test_helper'

class StandingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    game_1
    game_2
    game_3
  end

  def test_index
    get standings_path
    assert_response :success
    assert_select 'tr' do
      assert_select 'td:nth-child(1)', team_1.name
      assert_select 'td:nth-child(2)', 2.to_s
      assert_select 'td:nth-child(3)', 1.to_s
      assert_select 'td:nth-child(4)', (0.667).to_s
    end
  end

  def test_show
    get standings_team_path(team_2)
    assert_response :success
    assert_select 'tr' do
      assert_select 'td:nth-child(1)', team_2.name
      assert_select 'td:nth-child(2)', 1.to_s
      assert_select 'td:nth-child(3)', 2.to_s
      assert_select 'td:nth-child(4)', (0.333).to_s
    end
  end
end
