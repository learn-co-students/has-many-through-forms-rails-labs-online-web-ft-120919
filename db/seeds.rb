# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create([
    {name: "Fun"},
    {name: "Travel"},
    {name: "Food"}
])
User.create([
    {username: "sarah", email: "s@s.com"},
    {username: "bob", email: "b@b.com"}
]
)

