require 'test_helper'

class LabelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @label = labels(:one)
  end

  test "should get index" do
    get labels_url, as: :json
    assert_response :success
  end

  test "should create label" do
    assert_difference('Label.count') do
      post labels_url, params: { label: { user_id: @label.user_id, addition_date: @label.addition_date, additional_notes: @label.additional_notes, address: @label.address, country_id: @label.country_id, description: @label.description, founding_date: @label.founding_date, name: @label.name, online_shopping: @label.online_shopping, parent_label_id: @label.parent_label_id, phone: @label.phone, specialities: @label.specialities, status: @label.status, trivia: @label.trivia } }, as: :json
    end

    assert_response 201
  end

  test "should show label" do
    get label_url(@label), as: :json
    assert_response :success
  end

  test "should update label" do
    patch label_url(@label), params: { label: { user_id: @label.user_id, addition_date: @label.addition_date, additional_notes: @label.additional_notes, address: @label.address, country_id: @label.country_id, description: @label.description, founding_date: @label.founding_date, name: @label.name, online_shopping: @label.online_shopping, parent_label_id: @label.parent_label_id, phone: @label.phone, specialities: @label.specialities, status: @label.status, trivia: @label.trivia } }, as: :json
    assert_response 200
  end

  test "should destroy label" do
    assert_difference('Label.count', -1) do
      delete label_url(@label), as: :json
    end

    assert_response 204
  end
end
