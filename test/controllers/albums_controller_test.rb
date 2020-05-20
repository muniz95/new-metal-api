require 'test_helper'

class AlbumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @album = albums(:one)
  end

  test "should get index" do
    get albums_url, as: :json
    assert_response :success
  end

  test "should create album" do
    assert_difference('Album.count') do
      post albums_url, params: { album: { additional_notes: @album.additional_notes, catalog_id: @album.catalog_id, description: @album.description, format: @album.format, genre: @album.genre, identifiers: @album.identifiers, label_id: @album.label_id, name: @album.name, recording_information: @album.recording_information, type: @album.type, user_id: @album.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show album" do
    get album_url(@album), as: :json
    assert_response :success
  end

  test "should update album" do
    patch album_url(@album), params: { album: { additional_notes: @album.additional_notes, catalog_id: @album.catalog_id, description: @album.description, format: @album.format, genre: @album.genre, identifiers: @album.identifiers, label_id: @album.label_id, name: @album.name, recording_information: @album.recording_information, type: @album.type, user_id: @album.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy album" do
    assert_difference('Album.count', -1) do
      delete album_url(@album), as: :json
    end

    assert_response 204
  end
end
