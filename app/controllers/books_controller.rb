class BooksController < ApplicationController

  def index
    @authors = Author.all
  end
end
