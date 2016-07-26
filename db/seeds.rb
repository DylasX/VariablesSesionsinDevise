# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Reviewer.destroy_all
Book.destroy_all

Book.create!([{name:"EloquentRuby", author: "RussOlsen"},{name:"The little prince", author: "Russ"},{name:"Metaprogramming in ruby", author: "Paolo Perrota"},{name:"Design Patterns", author: "RussOlsen"},{name:"The windowlicker", author: "AFX"}])

eloquent = Book.find_by name: "EloquentRuby"
eloquent.notes.create! [
  { title: "Wow", note: "Great book to learn Ruby"},
  { title: "Funny", note: "Doesn't put you to sleep"}
]

reviewers = Reviewer.create! [
 { name: "Joe", password: "abc123" },
 { name: "Jim", password: "123abc" }
]

Book.all.each do |book|
 book.reviewer = reviewers.sample
 book.save!
end
