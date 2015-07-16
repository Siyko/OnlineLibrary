class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  def show
    @book=Book.find(params[:id])
  end
  def create
    @book = Book.new(book_params)
    @book.save
  end

private
  def book_params
    params.require(:book).permit(:name, :year, :publication, :author_id, :genre_id, :book_image)
  end
end
