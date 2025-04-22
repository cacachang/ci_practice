require "application_system_test_case"

class DynamicFormsTest < ApplicationSystemTestCase
  setup do
    @dynamic_form = dynamic_forms(:one)
  end

  test "visiting the index" do
    visit dynamic_forms_url
    assert_selector "h1", text: "Dynamic forms"
  end

  test "should create dynamic form" do
    visit dynamic_forms_url
    click_on "New dynamic form"

    fill_in "Description", with: @dynamic_form.description
    fill_in "Fields", with: @dynamic_form.fields
    fill_in "Name", with: @dynamic_form.name
    click_on "Create Dynamic form"

    assert_text "Dynamic form was successfully created"
    click_on "Back"
  end

  test "should update Dynamic form" do
    visit dynamic_form_url(@dynamic_form)
    click_on "Edit this dynamic form", match: :first

    fill_in "Description", with: @dynamic_form.description
    fill_in "Fields", with: @dynamic_form.fields
    fill_in "Name", with: @dynamic_form.name
    click_on "Update Dynamic form"

    assert_text "Dynamic form was successfully updated"
    click_on "Back"
  end

  test "should destroy Dynamic form" do
    visit dynamic_form_url(@dynamic_form)
    click_on "Destroy this dynamic form", match: :first

    assert_text "Dynamic form was successfully destroyed"
  end
end
