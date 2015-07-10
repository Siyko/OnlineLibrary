class BooksController < ApplicationController
  def show
    @books=Book.all

  end
  def create

  end
end
