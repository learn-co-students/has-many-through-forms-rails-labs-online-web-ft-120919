# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p1= Post.create(title: "Great Post", content: "Great content always.")
p2= Post.create(title: "Another Great Post", content: "Great content always.")

u1=User.create(username: "Art", email:"art@a.com")
u2=User.create(username: "Alpha", email:"alpha@a.com")
u3=User.create(username: "Messiah", email:"messiah@a.com")

c1= Comment.create(content:"Hi", user: u1, post: p1)
c2= Comment.create(content:"Hi again", user: u1, post: p1)
c3= Comment.create(content:"Hello", user: u2, post: p1)
c4= Comment.create(content:"Guten Tag", user: u2, post: p1)
c5= Comment.create(content:"Guten Abend", user: u1, post: p2)


