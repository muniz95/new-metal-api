require 'test_helper'

class ReleasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @release = releases(:one)
  end

  test "should get index" do
    get releases_url, as: :json
    assert_response :success
  end

  test "should create release" do
    assert_difference('Release.count') do
      post releases_url, params: { release: { additional_notes: @release.additional_notes, catalog_id: @release.catalog_id, description: @release.description, format: @release.format, genre: @release.genre, identifiers: @release.identifiers, label_id: @release.label_id, name: @release.name, recording_information: @release.recording_information, type: @release.type, user_id: @release.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show release" do
    get release_url(@release), as: :json
    assert_response :success
  end

  test "should update release" do
    patch release_url(@release), params: { release: { additional_notes: @release.additional_notes, catalog_id: @release.catalog_id, description: @release.description, format: @release.format, genre: @release.genre, identifiers: @release.identifiers, label_id: @release.label_id, name: @release.name, recording_information: @release.recording_information, type: @release.type, user_id: @release.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy release" do
    assert_difference('Release.count', -1) do
      delete release_url(@release), as: :json
    end

    assert_response 204
  end
end
