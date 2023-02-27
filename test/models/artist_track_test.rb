# == Schema Information
#
# Table name: artist_tracks
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :bigint           not null
#  track_id   :bigint           not null
#
# Indexes
#
#  index_artist_tracks_on_artist_id  (artist_id)
#  index_artist_tracks_on_track_id   (track_id)
#  unique_artist_track               (artist_id,track_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (artist_id => artists.id)
#  fk_rails_...  (track_id => tracks.id)
#
require "test_helper"

class ArtistTrackTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
