class AddColumnsToFavorites < ActiveRecord::Migration
  def change
    add_reference :favorites, :user, index: true, foreign_key: true
    add_reference :favorites, :book, index: true, foreign_key: true
  end
end
