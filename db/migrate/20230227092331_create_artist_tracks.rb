class CreateArtistTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :artist_tracks do |t|
      t.references :artist, null: false, foreign_key: true
      t.references :track, null: false, foreign_key: true

      t.timestamps
    end

    add_index :artist_tracks, [:artist_id, :track_id], unique: true, name: "unique_artist_track"
  end
end
