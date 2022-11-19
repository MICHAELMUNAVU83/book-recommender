class CreateReadingLists < ActiveRecord::Migration[7.0]
  def change
    create_table :reading_lists do |t|
      t.string :book_name
      t.string :book_genre
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
