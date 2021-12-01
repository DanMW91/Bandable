class AddLookingforFieldToBand < ActiveRecord::Migration[6.0]
  def change
    add_column :bands, :looking_for_instrument, :string
  end
end
