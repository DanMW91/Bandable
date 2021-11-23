class AddGenreToBand < ActiveRecord::Migration[6.0]
  def change
    add_column :bands, :genre, :string
  end
end
