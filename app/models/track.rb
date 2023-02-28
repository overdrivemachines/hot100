# == Schema Information
#
# Table name: tracks
#
#  id                  :bigint           not null, primary key
#  age_top10           :integer          default(0), not null
#  album               :string           default("Unknown"), not null
#  album_image_url     :string           default("https://img.freepik.com/free-vector/dark-wavy-shape-with-shinny-light-background_1409-1923.jpg?w=1380"), not null
#  name                :string           default("Song Name"), not null
#  preview_url         :string
#  rank                :integer          default(-1), not null
#  youtube_likes_count :integer          default(0), not null
#  youtube_url         :string           default("https://www.youtube.com/watch?v=u31qwQUeGuM"), not null
#  youtube_views_count :integer          default(0), not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  spotify_id          :string           default(""), not null
#
# Indexes
#
#  index_tracks_on_spotify_id  (spotify_id) UNIQUE
#
class Track < ApplicationRecord
  has_many :artist_tracks
  has_many :artists, through: :artist_tracks, dependent: :destroy
  has_many :likes, dependent: :destroy
end
