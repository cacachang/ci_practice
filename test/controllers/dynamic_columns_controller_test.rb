require "test_helper"

class DynamicColumnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dynamic_column = dynamic_columns(:one)
  end

  test "should get index" do
    get dynamic_columns_url
    assert_response :success
  end

  test "should get new" do
    get new_dynamic_column_url
    assert_response :success
  end

  test "should create dynamic_column" do
    assert_difference("DynamicColumn.count") do
      post dynamic_columns_url, params: { dynamic_column: { default_value: @dynamic_column.default_value, dynamic_form_id: @dynamic_column.dynamic_form_id, required: @dynamic_column.required, type: @dynamic_column.type } }
    end

    assert_redirected_to dynamic_column_url(DynamicColumn.last)
  end

  test "should show dynamic_column" do
    get dynamic_column_url(@dynamic_column)
    assert_response :success
  end

  test "should get edit" do
    get edit_dynamic_column_url(@dynamic_column)
    assert_response :success
  end

  test "should update dynamic_column" do
    patch dynamic_column_url(@dynamic_column), params: { dynamic_column: { default_value: @dynamic_column.default_value, dynamic_form_id: @dynamic_column.dynamic_form_id, required: @dynamic_column.required, type: @dynamic_column.type } }
    assert_redirected_to dynamic_column_url(@dynamic_column)
  end

  test "should destroy dynamic_column" do
    assert_difference("DynamicColumn.count", -1) do
      delete dynamic_column_url(@dynamic_column)
    end

    assert_redirected_to dynamic_columns_url
  end
end
