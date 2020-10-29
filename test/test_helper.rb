ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'mocha/minitest'
require 'minitest/reporters'
require 'simplecov'
SimpleCov.start do
  add_filter 'test/'
  add_filter 'config/'
end

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

def team_1
  @test_1 ||= Team.create!(name: 'Team1')
end

def team_2
  @test_2 ||= Team.create!(name: 'Team2')
end

def game_1
  @game_1 ||= Game.create!(home_team: team_1, away_team: team_2, home_score: 99, away_score: 88, date: DateTime.now)
end

def game_2
  @game_2 ||= Game.create!(home_team: team_2,
                           away_team: team_1,
                           home_score: 100,
                           away_score: 88,
                           date: DateTime.now + 1.day)
end

def game_3
  @game_3 ||= Game.create!(home_team: team_1,
                           away_team: team_2,
                           home_score: 100,
                           away_score: 88,
                           date: DateTime.now + 2.day)
end
