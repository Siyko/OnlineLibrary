class AddColumnsToHistory < ActiveRecord::Migration
  def change
    add_reference :histories, :user, index: true, foreign_key: true
    add_reference :histories, :book, index: true, foreign_key: true
  end
end
