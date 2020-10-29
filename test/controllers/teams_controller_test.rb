require 'test_helper'

class TeamsControllerTest < ActionDispatch::IntegrationTest
  def test_index
    team_1
    team_2
    get teams_path
    assert_response :success
    assert_select 'td', team_1.name
    assert_select 'td', team_2.name
  end

  def test_show
    team_1
    get team_path(team_1)
    assert_response :success
    assert_select 'td', team_1.name
  end
end
