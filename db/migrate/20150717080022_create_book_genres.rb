class CreateBookGenres < ActiveRecord::Migration
  def change
    create_table :book_genres do |t|

      t.belongs_to :genre
      t.belongs_to :book
      t.timestamps null: false
    end
  end
end
