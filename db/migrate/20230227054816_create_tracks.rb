class CreateTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :tracks do |t|
      t.string :album, null: false, default: "Unknown"
      t.string :album_image_url, null: false, default: "https://img.freepik.com/free-vector/dark-wavy-shape-with-shinny-light-background_1409-1923.jpg?w=1380"
      t.string :spotify_id, null: false, default: "", index: { unique: true }
      t.string :name, null: false, default: "Song Name"
      t.string :preview_url
      t.string :youtube_url, null: false, default: "https://www.youtube.com/watch?v=u31qwQUeGuM"
      t.integer :youtube_likes_count, null: false, default: 0
      t.integer :youtube_views_count, null: false, default: 0
      t.integer :rank, null: false, default: -1
      t.integer :age_top10, null: false, default: 0

      t.timestamps
    end
  end
end
