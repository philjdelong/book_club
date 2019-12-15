class Author < ApplicationRecord
  has_many :books

  validates_presence_of :name

  def average_pages
    total_pages/(books.count).to_f.round(2) || 0
  end

  def total_pages
    x = 0
      books.each do |book|
        x += book.pages
      end
    return x
  end
end
