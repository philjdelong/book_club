# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
phil_delong = Author.create(
  name:             "Phil DeLong"
)

book = phil_delong.books.create(
  title:            "The Book",
  pages:            100,
  publication_year: "2020",
)
