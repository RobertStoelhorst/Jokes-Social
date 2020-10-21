# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
u1 = User.create :email => 'ghilly@ga.co', :password => 'chicken'
u2 = User.create :email => 'captainfantastic@ga.com', :password => 'chicken', :admin => true
puts "#{ User.count } users."

Joke.destroy_all
j1 = Joke.create :title => "Grandmother", :setup => "I saw my grandmother the other day...probably for the last time.", :punchline => "Oh, she's not sick or anything, she just bores the hell out of me"
j2 = Joke.create :title => "Safe Sex", :setup => "The only way to have safe sex is to abstain.", :punchline => "From drinking."
# puts "#{ Joke.count } jokes."

Like.destroy_all
puts "#{ Like.count } likes."

Genre.destroy_all
g1 = Genre.create :name => "Two liner"
puts "#{ Genre.count } genres."

# Associations
puts "Jokes and Genres."
j1.genres << g1
j2.genres << g1

puts "Jokes and users"
u1.jokes << j1
u2.jokes << j2
