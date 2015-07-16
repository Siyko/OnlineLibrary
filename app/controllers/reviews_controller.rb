class ReviewsController < ApplicationController
  def create
    @book = Book.find_by(params[:id])
    @review = @book.reviews.new(review_params)
    @review.user_id = current_user.id
    @review.save
    if @book.reviews.all.count==1
    @book.book_rating=@review.rating
    else
    @book.book_rating = (@book.book_rating + @review.rating) / 2
    end
    @book.save
    redirect_to book_path(@book)
=begin
    /\___/\
   (  o o  )
   /   *   \
   \__\_/__/ meow!
     /   \
    / ___ \
    \/___\/
=end
  end

  def show

  end

  def update

  end

  def destroy
    @book = Book.find_by(params[:id])
    @review = @book.review.find(params[:id])
    if @review.user_id == current_user.id
      @review.destroy
=begin
        book rating fix
=end
    else
      flash[:notice] = 'You have no permissions!'
    end

  end


private
  def review_params
    params.require(:review).permit(:comment, :rating)
  end

end

