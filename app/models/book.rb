class Book < ApplicationRecord
  belongs_to :author

  validates_presence_of :title, :pages, :publication_year
end
