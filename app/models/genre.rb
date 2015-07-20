class Genre < ActiveRecord::Base
  has_many :books, :through=> :book_genres
  has_many :book_genres
  belongs_to :category
end

