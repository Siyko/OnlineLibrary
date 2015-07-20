class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :name

      t.belongs_to :category

      t.timestamps null: false
    end
  end
end
