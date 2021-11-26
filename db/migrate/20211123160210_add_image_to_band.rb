class AddImageToBand < ActiveRecord::Migration[6.0]
  def change
    add_column :bands, :image_url, :string
  end
end
