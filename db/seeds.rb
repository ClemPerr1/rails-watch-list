# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'
require 'json'

TOP_100 = "https://tmdb.lewagon.com/movie/top_rated"

movies_html = URI.open(TOP_100).read
movies_serialized = JSON.parse(movies_html)

movies_serialized['results'].each do | film |
  Movie.create(
    title: film['title'],
    overview: film['overview'],
    poster_url: "https://image.tmdb.org/t/p/w500#{film['poster_path']}",
    rating: film['vote_average']
  )
end
