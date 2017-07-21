# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Favejob.delete_all
User.delete_all
To_do.delete_all

user = User.new
job = Favejob.new
to_do = To_do.new

u1 = User.create(
  email: "julie@gmail.com",
  password:"password",
  name:"Julie",
  location: "New York",
  skills: "Javascript, Ruby",
  bio: "A New York based Web Developer with a passion for finding the perfect tacos."
  )

j1 = Favejob.create(
  title: "Computer Nerd",
  description: "Really hard",
  location: "New York",
  website: "www.no.com",
  position: "24-7",
  apply: "never",
  user: u1
  )

t1 = To_do.create(
  emailed: true,
  responded: false,
  note: "Hiring manager likes Starbucks, CEO goes to Hamptons on weekends.",
  favejob: j1
  )
