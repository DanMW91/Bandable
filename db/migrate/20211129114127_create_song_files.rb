class CreateSongFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :song_files do |t|
      t.string :text_content
      t.references :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end
