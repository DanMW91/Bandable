class AddSpotifyUrlToBands < ActiveRecord::Migration[6.0]
  def change
    add_column :bands, :spotify_embed_url, :string
  end
end
