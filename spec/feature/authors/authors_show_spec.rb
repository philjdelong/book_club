RSpec.describe "As a user" do
  describe "when i visit author show page", type: :feature do
    before :each do

      @phil_delong = Author.create(
        name:             "Phil DeLong"
      )

      @the_book = @phil_delong.books.create(
        title:            "The Book",
        pages:            100,
        publication_year: "2020"
      )

      visit "/authors/#{@phil_delong.id}"
    end

    it "i can see the authors books and average page count" do

      expect(page).to have_content(@phil_delong.name)
      expect(page).to have_content(@the_book.title)
      expect(page).to have_content(@phil_delong.average_pages)
    end
  end
end
