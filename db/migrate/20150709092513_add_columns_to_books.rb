class AddColumnsToBooks < ActiveRecord::Migration
  def change
    add_reference :books, :author, index: true, foreign_key: true
    add_reference :books, :genre, index: true, foreign_key: true
  end
end
