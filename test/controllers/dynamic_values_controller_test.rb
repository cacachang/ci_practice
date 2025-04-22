require "test_helper"

class DynamicValuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dynamic_value = dynamic_values(:one)
  end

  test "should get index" do
    get dynamic_values_url
    assert_response :success
  end

  test "should get new" do
    get new_dynamic_value_url
    assert_response :success
  end

  test "should create dynamic_value" do
    assert_difference("DynamicValue.count") do
      post dynamic_values_url, params: { dynamic_value: { dynamic_form_id: @dynamic_value.dynamic_form_id, field_value: @dynamic_value.field_value } }
    end

    assert_redirected_to dynamic_value_url(DynamicValue.last)
  end

  test "should show dynamic_value" do
    get dynamic_value_url(@dynamic_value)
    assert_response :success
  end

  test "should get edit" do
    get edit_dynamic_value_url(@dynamic_value)
    assert_response :success
  end

  test "should update dynamic_value" do
    patch dynamic_value_url(@dynamic_value), params: { dynamic_value: { dynamic_form_id: @dynamic_value.dynamic_form_id, field_value: @dynamic_value.field_value } }
    assert_redirected_to dynamic_value_url(@dynamic_value)
  end

  test "should destroy dynamic_value" do
    assert_difference("DynamicValue.count", -1) do
      delete dynamic_value_url(@dynamic_value)
    end

    assert_redirected_to dynamic_values_url
  end
end
