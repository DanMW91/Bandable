class AddInstrumentToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :instrument, :string
  end
end
