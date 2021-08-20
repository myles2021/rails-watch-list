# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Movie.destroy_all

puts "Creating movies..."

8.times do
  movie = Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::JapaneseMedia::StudioGhibli.quote,
    poster_url: "https://image.tmdb.org/t/p/original/#{Faker::Blockchain::Aeternity.transaction}.jpg",
    rating: rand(0..100) / 10
  )
  movie.save
  puts "Created movie with id #{movie.id}"
end
