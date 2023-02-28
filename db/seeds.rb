# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create 8 artists

8.times do
  Artist.create(name: Faker::Music.band, spotify_id: SecureRandom.hex)
end

# Create 8 tracks
8.times do
  Track.create(
    album: Faker::Music.album,
    album_image_url: "https://images.unsplash.com/photo-1563089145-599997674d42?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    spotify_id: SecureRandom.hex,
    name: Faker::Music::RockBand.song,
    preview_url: "",
    youtube_url: "",
    youtube_likes_count: rand(100000),
    youtube_views_count: rand(1000000),
    rank: -1,
    age_top10: rand(1..25)
  )
end

# Add upto 3 artists to each track
Track.all.each do |track|
  rand(3).times do
    random_artist = Artist.offset(rand(Artist.count)).first
    # check if track has random_artist, if not add it
    track.artists << Artist.offset(rand(Artist.count)).first unless track.artist_ids.include?(random_artist.id)
  end
end
