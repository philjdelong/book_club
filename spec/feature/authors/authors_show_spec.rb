RSpec.describe "As a user" do
  describe "when i visit artist show page", type: :feature do
    before :each do

      @phil_delong = Author.create(
        name:             "Phil DeLong"
      )

      @the_book = @phil_delong.books.create(
        title:            "The Book",
        pages:            100,
        publication_year: "2020"
      )

      visit '/books'
      click_on 'Phil DeLong'
    end

    it "i can see the authors books and average page count" do


      expect(current_path).to eq("/authors/#{@phil_delong.id}")

      expect(page).to have_content(@phil_delong.name)
      expect(page).to have_content(@the_book.title)
      expect(page).to have_content(@phil_delong.average_pages)
    end
  end
end
