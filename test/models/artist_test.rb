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
require "test_helper"

class ArtistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
