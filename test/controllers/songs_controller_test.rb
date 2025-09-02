require 'test_helper'

class SongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @song = create(:song)
  end

  test "should get index" do
    get api_v1_songs_url, as: :json
    assert_response :success
  end

  test "should create song" do
    assert_difference('Song.count') do
      post api_v1_songs_url,
        params: {
          song: {
            bonus: @song.bonus,
            disc_id: @song.disc_id,
            length: @song.length,
            lyrics: @song.lyrics,
            title: @song.title
          }
        },
        as: :json
    end

    assert_response :created
  end

  test "should show song" do
    get api_v1_song_url(@song), as: :json
    assert_response :success
  end

  test "should update song" do
    patch api_v1_song_url(@song),
      params: {
        song: {
          bonus: @song.bonus,
          disc_id: @song.disc_id,
          length: @song.length,
          lyrics: @song.lyrics,
          title: @song.title
        }
      },
      as: :json
    assert_response :ok
  end

  test "should destroy song" do
    assert_difference('Song.count', -1) do
      delete api_v1_song_url(@song), as: :json
    end

    assert_response :no_content
  end
end
