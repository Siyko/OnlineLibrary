class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.date :year
      t.text :publication
      t.integer :download_count
      t.integer :book_rating

      t.timestamps null: false
    end
  end
end
