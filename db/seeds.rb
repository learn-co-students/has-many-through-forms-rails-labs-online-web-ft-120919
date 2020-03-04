# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create(name: 'Silly')
Category.create(name: 'Funny')

fb = User.create(username: 'FatBarry', email: 'fatbarry123@email.com')
rs = User.create(username: 'Richard Slap', email: 'rslap123@email.com')

Post.create(title: 'A Hilarious Post', content: 'Here is my post. It is very funny.')

Comment.create(content: 'haha what a hilarious post', user_id: 1, post_id: 1)
