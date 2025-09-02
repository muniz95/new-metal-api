require 'test_helper'

class LabelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @label = create(:label)
  end

  test "should get index" do
    get api_v1_labels_url, as: :json
    assert_response :success
  end

  test "should create label" do
    assert_difference('Label.count') do
      post api_v1_labels_url, params: {
                                label: {
                                  user_id: @label.user_id,
                                  addition_date: @label.addition_date,
                                  additional_notes: @label.additional_notes,
                                  address: @label.address,
                                  country_id: @label.country_id,
                                  description: @label.description,
                                  founding_date: @label.founding_date,
                                  name: @label.name,
                                  online_shopping: @label.online_shopping,
                                  parent_label_id: @label.parent_label_id,
                                  phone: @label.phone,
                                  specialities: @label.specialities,
                                  status: @label.status,
                                  trivia: @label.trivia
                                }
                              },
                              as: :json
    end

    assert_response :created
  end

  test "should show label" do
    get api_v1_label_url(@label), as: :json
    assert_response :success
  end

  test "should update label" do
    patch api_v1_label_url(@label), params: { label: { user_id: @label.user_id, addition_date: @label.addition_date, additional_notes: @label.additional_notes, address: @label.address, country_id: @label.country_id, description: @label.description, founding_date: @label.founding_date, name: @label.name, online_shopping: @label.online_shopping, parent_label_id: @label.parent_label_id, phone: @label.phone, specialities: @label.specialities, status: @label.status, trivia: @label.trivia } },
                                    as: :json
    assert_response :ok
  end

  test "should destroy label" do
    assert_difference('Label.count', -1) do
      delete api_v1_label_url(@label), as: :json
    end

    assert_response :no_content
  end
end
