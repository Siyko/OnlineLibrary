class HomeController < ApplicationController
  def index
    @popular_books = Book.order('book_rating DESC').first(3)
    @new_books = Book.order('year DESC').first(3)
    @counter = 0

  end
end
