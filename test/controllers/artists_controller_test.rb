require 'test_helper'

class ArtistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist = create(:artist)
  end

  test "should get index" do
    get api_v1_artists_url, as: :json
    assert_response :success
  end

  test "should create artist" do
    country = create(:country)
    user = create(:user)
    
    assert_difference('Artist.count') do
      post api_v1_artists_url, params: { 
        artist: { 
          name: "New Artist",
          biography: "New biography", 
          birth: Date.new(1985, 1, 1), 
          city: "New City", 
          country_id: country.id, 
          gender: "Male", 
          user_id: user.id 
        } 
      }, as: :json
    end

    assert_response 201
  end

  test "should show artist" do
    get api_v1_artist_url(@artist), as: :json
    assert_response :success
  end

  test "should update artist" do
    patch api_v1_artist_url(@artist), params: { 
      artist: { 
        biography: "Updated biography", 
        birth: @artist.birth, 
        city: @artist.city, 
        country_id: @artist.country_id, 
        gender: @artist.gender, 
        name: @artist.name, 
        user_id: @artist.user_id 
      } 
    }, as: :json
    assert_response 200
  end

  test "should destroy artist" do
    assert_difference('Artist.count', -1) do
      delete api_v1_artist_url(@artist), as: :json
    end

    assert_response 204
  end
end
