require 'test_helper'

class TeamsControllerTest < ActiveSupport::TestCase
  test '#wins' do
    game_1
    assert_equal(team_1.wins, 1)
    assert_equal(team_2.wins, 0)
  end

  test '#wins with no games' do
    assert_equal(team_1.wins, 0)
    assert_equal(team_2.wins, 0)
  end

  test '#losses' do
    game_1
    assert_equal(team_1.losses, 0)
    assert_equal(team_2.losses, 1)
  end

  test '#lossess with no games' do
    assert_equal(team_1.wins, 0)
    assert_equal(team_2.wins, 0)
  end

  test '#wining_pct' do
    game_1
    assert_equal(team_1.wining_pct, 1.0)
    assert_equal(team_2.wining_pct, 0)
  end

  test '#wining_pct with no games' do
    assert_equal(team_1.wining_pct, 0)
    assert_equal(team_2.wining_pct, 0)
  end
end
