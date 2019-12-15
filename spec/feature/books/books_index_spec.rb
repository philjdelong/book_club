require 'rails_helper'

RSpec.describe "As a user" do
  describe "when i visit the books index page", type: :feature do
    before :each do
      @phil_delong = Author.create(
        name:             "Phil DeLong"
      )

      @the_book = @phil_delong.books.create(
        title:            "The Book",
        pages:            100,
        publication_year: "2020"
      )

      @other_book = @phil_delong.books.create(
        title:            "The Other Book",
        pages:            50,
        publication_year: "2017"
      )
      visit "/books"
    end

    it "i see all books with the title and pages and year and author" do
      expect(page).to have_content(@the_book.title)
      expect(page).to have_content(@the_book.pages)
      expect(page).to have_content(@the_book.publication_year)
      expect(page).to have_content(@the_book.author.name)

      expect(page).to have_content(@other_book.title)
      expect(page).to have_content(@other_book.pages)
      expect(page).to have_content(@other_book.publication_year)
      expect(page).to have_content(@other_book.author.name)

    end

    it "i click on each author name and go to author show page" do

      expect(page).to have_link('Phil DeLong')
    end
  end
end
