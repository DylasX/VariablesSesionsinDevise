# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Book.create!([{name:"EloquentRuby", author: "RussOlsen"},{name:"The little prince", author: "Russ"},{name:"Metaprogramming in ruby", author: "Paolo Perrota"},{name:"Design Patterns", author: "RussOlsen"},{name:"The windowlicker", author: "AFX"}])


100.times {|index| Book.create! name:"Book#{index}", author: "Author#{index}", reviewer_id: 8 }
