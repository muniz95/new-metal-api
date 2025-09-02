require 'test_helper'

class CountriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @country = create(:country)
  end

  test "should get index" do
    get api_v1_countries_url, as: :json
    assert_response :success
  end

  test "should show country" do
    get api_v1_country_url(@country), as: :json
    assert_response :success
  end
end
