require "test_helper"

class DynamicFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dynamic_form = dynamic_forms(:one)
  end

  test "should get index" do
    get dynamic_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_dynamic_form_url
    assert_response :success
  end

  test "should create dynamic_form" do
    assert_difference("DynamicForm.count") do
      post dynamic_forms_url, params: { dynamic_form: { description: @dynamic_form.description, fields: @dynamic_form.fields, name: @dynamic_form.name } }
    end

    assert_redirected_to dynamic_form_url(DynamicForm.last)
  end

  test "should show dynamic_form" do
    get dynamic_form_url(@dynamic_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_dynamic_form_url(@dynamic_form)
    assert_response :success
  end

  test "should update dynamic_form" do
    patch dynamic_form_url(@dynamic_form), params: { dynamic_form: { description: @dynamic_form.description, fields: @dynamic_form.fields, name: @dynamic_form.name } }
    assert_redirected_to dynamic_form_url(@dynamic_form)
  end

  test "should destroy dynamic_form" do
    assert_difference("DynamicForm.count", -1) do
      delete dynamic_form_url(@dynamic_form)
    end

    assert_redirected_to dynamic_forms_url
  end
end
