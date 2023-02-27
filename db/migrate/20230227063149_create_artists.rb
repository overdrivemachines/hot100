class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :spotify_id, null: false, default: "Spotify ID", index: { unique: true }
      t.string :name, null: false, default: "Artist"

      t.timestamps
    end
  end
end
