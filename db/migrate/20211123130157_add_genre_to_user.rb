class AddGenreToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :genre, :string
  end
end
