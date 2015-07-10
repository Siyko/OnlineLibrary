class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.date :download_date

      t.timestamps null: false
    end
  end
end
