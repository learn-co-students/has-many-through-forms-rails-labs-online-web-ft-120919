# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.destroy_all
User.destroy_all
Post.destroy_all
Comment.destroy_all

cool = Category.create!(name: "Cool")
lovely = Category.create!(name: "Lovely")

p = Post.create!(title: "Title", content: "This is my content")
p.categories << cool

jimmy = User.create!(username: "Jimmy")
ricky = User.create!(username: "Ricky")

Comment.create!(content: "THis is a comment", post: p, user: jimmy)
Comment.create!(content: "Jimmy's second", post: p, user: jimmy)
Comment.create!(content: "New comment", post: p, user: ricky)