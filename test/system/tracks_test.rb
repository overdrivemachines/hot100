require "application_system_test_case"

class TracksTest < ApplicationSystemTestCase
  setup do
    @track = tracks(:one)
  end

  test "visiting the index" do
    visit tracks_url
    assert_selector "h1", text: "Tracks"
  end

  test "should create track" do
    visit tracks_url
    click_on "New track"

    fill_in "Age top 10", with: @track.age_top_10
    fill_in "Album", with: @track.album
    fill_in "Album image url", with: @track.album_image_url
    fill_in "Name", with: @track.name
    fill_in "Preview url", with: @track.preview_url
    fill_in "Rank", with: @track.rank
    fill_in "Spotify", with: @track.spotify_id
    fill_in "Youtube likes count", with: @track.youtube_likes_count
    fill_in "Youtube url", with: @track.youtube_url
    fill_in "Youtube views count", with: @track.youtube_views_count
    click_on "Create Track"

    assert_text "Track was successfully created"
    click_on "Back"
  end

  test "should update Track" do
    visit track_url(@track)
    click_on "Edit this track", match: :first

    fill_in "Age top 10", with: @track.age_top_10
    fill_in "Album", with: @track.album
    fill_in "Album image url", with: @track.album_image_url
    fill_in "Name", with: @track.name
    fill_in "Preview url", with: @track.preview_url
    fill_in "Rank", with: @track.rank
    fill_in "Spotify", with: @track.spotify_id
    fill_in "Youtube likes count", with: @track.youtube_likes_count
    fill_in "Youtube url", with: @track.youtube_url
    fill_in "Youtube views count", with: @track.youtube_views_count
    click_on "Update Track"

    assert_text "Track was successfully updated"
    click_on "Back"
  end

  test "should destroy Track" do
    visit track_url(@track)
    click_on "Destroy this track", match: :first

    assert_text "Track was successfully destroyed"
  end
end
