class AddColumnsToGenre < ActiveRecord::Migration
  def change
    add_reference :genres, :book, index: true, foreign_key: true
  end
end
