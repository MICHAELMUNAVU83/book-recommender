class AddPreferredGenreToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :preferred_genre, :string
  end
end
