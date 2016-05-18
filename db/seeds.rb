# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

board = Board.new
board.name = "Books to read"
board.save

7.times do
  list = List.new
  list.board_id = board.id
  list.name = Faker::Book.genre
  list.save

  rand(10).times do
    card = Card.new
    card.list_id = list.id
    card.name = Faker::Book.title
    card.description = "by #{Faker::Book.author}, from #{Faker::Book.publisher}"
    card.save
  end
end


board = Board.new
board.name = "Great companies"
board.save

7.times do
  list = List.new
  list.board_id = board.id
  list.name = Faker::Company.name
  list.save

  rand(10).times do
    card = Card.new
    card.list_id = list.id
    card.name = Faker::Company.buzzword
    card.description = Faker::Company.catch_phrase
    card.save
  end
end
