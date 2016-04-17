class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.decimal :price
      t.integer :genre_id
      t.references :author, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
