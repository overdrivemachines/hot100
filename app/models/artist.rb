# == Schema Information
#
# Table name: artists
#
#  id         :bigint           not null, primary key
#  name       :string           default("Artist"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  spotify_id :string           default("Spotify ID"), not null
#
# Indexes
#
#  index_artists_on_spotify_id  (spotify_id) UNIQUE
#
class Artist < ApplicationRecord
  has_many :tracks, through: :artist_tracks, dependant: :destroy
end
