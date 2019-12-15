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

courtney_newby = Author.create(
  name:             "Courtney Newby"
)

the_book = phil_delong.books.create(
  title:            "The Book",
  pages:            100,
  publication_year: "2020"
)

other_book = phil_delong.books.create(
  title:            "The Other Book",
  pages:            50,
  publication_year: "2017"
)

courtneys_book = courtney_newby.books.create(
  title:            "Not Your Book",
  pages:            1234,
  publication_year: "3019"
)

courtneys_other_book = courtney_newby.books.create(
  title:            "Denfinitely Not Your Book...",
  pages:            4321,
  publication_year: "3020"
)
