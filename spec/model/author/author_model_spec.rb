require 'rails_helper'

RSpec.describe Author, type: :model do
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
  end

  describe  "validations" do
    it {should validate_presence_of :name}
    it {should have_many :books}
  end

  describe "methods" do
    it "can calculate total pages" do
      expect(@phil_delong.total_pages).to eq(150)
    end

    it "can calculate average pages" do
      expect(@phil_delong.average_pages).to eq(75)
    end
  end
end
