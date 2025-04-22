require "application_system_test_case"

class DynamicValuesTest < ApplicationSystemTestCase
  setup do
    @dynamic_value = dynamic_values(:one)
  end

  test "visiting the index" do
    visit dynamic_values_url
    assert_selector "h1", text: "Dynamic values"
  end

  test "should create dynamic value" do
    visit dynamic_values_url
    click_on "New dynamic value"

    fill_in "Dynamic form", with: @dynamic_value.dynamic_form_id
    fill_in "Field value", with: @dynamic_value.field_value
    click_on "Create Dynamic value"

    assert_text "Dynamic value was successfully created"
    click_on "Back"
  end

  test "should update Dynamic value" do
    visit dynamic_value_url(@dynamic_value)
    click_on "Edit this dynamic value", match: :first

    fill_in "Dynamic form", with: @dynamic_value.dynamic_form_id
    fill_in "Field value", with: @dynamic_value.field_value
    click_on "Update Dynamic value"

    assert_text "Dynamic value was successfully updated"
    click_on "Back"
  end

  test "should destroy Dynamic value" do
    visit dynamic_value_url(@dynamic_value)
    click_on "Destroy this dynamic value", match: :first

    assert_text "Dynamic value was successfully destroyed"
  end
end
