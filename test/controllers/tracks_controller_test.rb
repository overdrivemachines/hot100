require "test_helper"

class TracksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @track = tracks(:one)
  end

  test "should get index" do
    get tracks_url
    assert_response :success
  end

  test "should get new" do
    get new_track_url
    assert_response :success
  end

  test "should create track" do
    assert_difference("Track.count") do
      post tracks_url, params: { track: { age_top_10: @track.age_top_10, album: @track.album, album_image_url: @track.album_image_url, name: @track.name, preview_url: @track.preview_url, rank: @track.rank, spotify_id: @track.spotify_id, youtube_likes_count: @track.youtube_likes_count, youtube_url: @track.youtube_url, youtube_views_count: @track.youtube_views_count } }
    end

    assert_redirected_to track_url(Track.last)
  end

  test "should show track" do
    get track_url(@track)
    assert_response :success
  end

  test "should get edit" do
    get edit_track_url(@track)
    assert_response :success
  end

  test "should update track" do
    patch track_url(@track), params: { track: { age_top_10: @track.age_top_10, album: @track.album, album_image_url: @track.album_image_url, name: @track.name, preview_url: @track.preview_url, rank: @track.rank, spotify_id: @track.spotify_id, youtube_likes_count: @track.youtube_likes_count, youtube_url: @track.youtube_url, youtube_views_count: @track.youtube_views_count } }
    assert_redirected_to track_url(@track)
  end

  test "should destroy track" do
    assert_difference("Track.count", -1) do
      delete track_url(@track)
    end

    assert_redirected_to tracks_url
  end
end
