class CreateBands < ActiveRecord::Migration[6.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.integer :current_member_count
      t.string :location
      t.string :bio

      t.timestamps
    end
  end
end
