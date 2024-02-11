# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
movie1 = Movie.create(title: 'Inception', genre: 'Sci-Fi',language: "english",description: "This is Action Movie",release_date: (DateTime.now + 6.days).strftime("%d %b %Y"))
movie2 = Movie.create(title: 'The Dark Knight', genre: 'Action',language: "hindi",description: "This is Action Movie",release_date: (DateTime.now + 6.days).strftime("%d %b %Y"))
movie3 = Movie.create(title: 'Interstellar', genre: 'Sci-Fi',language: "korean",description: "This is Action Movie",release_date: (DateTime.now + 6.days).strftime("%d %b %Y"))

movie1.showtimes.create(date: (DateTime.now + 1.day).strftime("%d %b %Y"),start_time: "10:30 AM", end_time: "13:30 PM" )
movie1.showtimes.create(date: (DateTime.now + 2.days).strftime("%d %b %Y"),start_time: "10:30 AM", end_time: "13:30 PM" )
movie1.showtimes.create(date: (DateTime.now + 3.days).strftime("%d %b %Y"),start_time: "10:30 AM", end_time: "13:30 PM" )

movie2.showtimes.create(date: (DateTime.now + 1.day).strftime("%d %b %Y"),start_time: "10:30 AM", end_time: "13:30 PM" )
movie2.showtimes.create(date: (DateTime.now + 2.days).strftime("%d %b %Y"),start_time: "10:30 AM", end_time: "13:30 PM" )
movie2.showtimes.create(date: (DateTime.now + 3.days).strftime("%d %b %Y"),start_time: "10:30 AM", end_time: "13:30 PM" )

movie3.showtimes.create(date: (DateTime.now + 1.day).strftime("%d %b %Y"),start_time: "10:30 AM", end_time: "13:30 PM" )
movie3.showtimes.create(date: (DateTime.now + 2.days).strftime("%d %b %Y"),start_time: "10:30 AM", end_time: "13:30 PM" )
movie3.showtimes.create(date: (DateTime.now + 3.days).strftime("%d %b %Y"),start_time: "10:30 AM", end_time: "13:30 PM" )