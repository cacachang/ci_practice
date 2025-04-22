require "application_system_test_case"

class DynamicColumnsTest < ApplicationSystemTestCase
  setup do
    @dynamic_column = dynamic_columns(:one)
  end

  test "visiting the index" do
    visit dynamic_columns_url
    assert_selector "h1", text: "Dynamic columns"
  end

  test "should create dynamic column" do
    visit dynamic_columns_url
    click_on "New dynamic column"

    fill_in "Default value", with: @dynamic_column.default_value
    fill_in "Dynamic form", with: @dynamic_column.dynamic_form_id
    check "Required" if @dynamic_column.required
    fill_in "Type", with: @dynamic_column.type
    click_on "Create Dynamic column"

    assert_text "Dynamic column was successfully created"
    click_on "Back"
  end

  test "should update Dynamic column" do
    visit dynamic_column_url(@dynamic_column)
    click_on "Edit this dynamic column", match: :first

    fill_in "Default value", with: @dynamic_column.default_value
    fill_in "Dynamic form", with: @dynamic_column.dynamic_form_id
    check "Required" if @dynamic_column.required
    fill_in "Type", with: @dynamic_column.type
    click_on "Update Dynamic column"

    assert_text "Dynamic column was successfully updated"
    click_on "Back"
  end

  test "should destroy Dynamic column" do
    visit dynamic_column_url(@dynamic_column)
    click_on "Destroy this dynamic column", match: :first

    assert_text "Dynamic column was successfully destroyed"
  end
end
