class CreateBandMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :band_members do |t|
      t.references :user, null: false, foreign_key: true
      t.references :band, null: false, foreign_key: true
      t.boolean :is_member
      t.boolean :is_admin
      t.boolean :is_audition
      t.string :invitation_text

      t.timestamps
    end
  end
end
