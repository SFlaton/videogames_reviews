print "Seed standard categories..."

Category.create([
  { name: "PC Games"},
  { name: "XBox Games"},
  { name: "PlayStation Games"},
  { name: "Board Games"}
  ])

puts "seeded #{Category.count} categories!"
