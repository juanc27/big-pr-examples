# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

team1 = Team.create(name: 'Golden State Warriors')
team2 = Team.create(name: 'Los Angeles Lakers')
team3 = Team.create(name: 'Los Angeles Clippers')
team4 = Team.create(name: 'Phoenix Suns')
team5 = Team.create(name: 'Sacramento Kings')

first_date = DateTime.parse('2020-10-01 19:00:00 UTC')

Game.create(home_team: team1, away_team: team2, home_score: 99, away_score: 88, date: first_date + 1)
Game.create(home_team: team4, away_team: team3, home_score: 89, away_score: 92, date: first_date + 1)

Game.create(home_team: team1, away_team: team4, home_score: 115, away_score: 90, date: first_date + 2)
Game.create(home_team: team5, away_team: team3, home_score: 85, away_score: 99, date: first_date + 2)

Game.create(home_team: team2, away_team: team4, home_score: 116, away_score: 91, date: first_date + 3)
Game.create(home_team: team5, away_team: team1, home_score: 91, away_score: 100, date: first_date + 3)

Game.create(home_team: team3, away_team: team1, home_score: 85, away_score: 95, date: first_date + 4)
Game.create(home_team: team2, away_team: team5, home_score: 115, away_score: 80, date: first_date + 4)

Game.create(home_team: team3, away_team: team2, home_score: 91, away_score: 100, date: first_date + 5)
Game.create(home_team: team4, away_team: team5, home_score: 105, away_score: 100, date: first_date + 5)




