class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.integer :year
      t.text :publication
      t.integer :download_count

      t.timestamps null: false
    end
  end
end
