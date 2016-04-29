print "Seed standard categories..."

pc_games = Category.create(name: "PC Games")
xbox_games = Category.create(name: "XBox Games")
playstation_games = Category.create(name: "PlayStation Games")
board_games = Category.create(name: "Board Games")

puts "seeded #{Category.count} categories!"

print "Seeding some games..."

pong = Game.create(title: "Pong", category: pc_games)
commandos = Game.create(title: "Commandos", category: pc_games)
settlers = Game.create(title: "Settlers", category: pc_games)

splinter_cell = Game.create(title: "Splinter Cell", category: xbox_games)
mortal_combat = Game.create(title: "Mortal Combat", category: playstation_games)

risk = Game.create(title: "Risk", category: board_games)


puts "seeded #{Game.count} games!"

Review.create(title: "Awesome Game", content: "omg so awesome", game: pong)
Review.create(title: "Awesome Game", content: "omg so awesome", game: commandos)
Review.create(title: "Awesome Game", content: "omg so awesome", game: risk)
Review.create(title: "Awesome Game", content: "omg so awesome", game: settlers)
Review.create(title: "Awesome Game", content: "omg so awesome", game: splinter_cell)
Review.create(title: "Awesome Game", content: "omg so awesome", game: mortal_combat)
