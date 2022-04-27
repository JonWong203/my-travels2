require "application_system_test_case"

class StreetsTest < ApplicationSystemTestCase
  setup do
    @street = streets(:one)
  end

  test "visiting the index" do
    visit streets_url
    assert_selector "h1", text: "Streets"
  end

  test "should create street" do
    visit streets_url
    click_on "New street"

    fill_in "City", with: @street.city
    fill_in "Country", with: @street.country_id
    fill_in "Location", with: @street.location
    fill_in "Street name", with: @street.street_name
    click_on "Create Street"

    assert_text "Street was successfully created"
    click_on "Back"
  end

  test "should update Street" do
    visit street_url(@street)
    click_on "Edit this street", match: :first

    fill_in "City", with: @street.city
    fill_in "Country", with: @street.country_id
    fill_in "Location", with: @street.location
    fill_in "Street name", with: @street.street_name
    click_on "Update Street"

    assert_text "Street was successfully updated"
    click_on "Back"
  end

  test "should destroy Street" do
    visit street_url(@street)
    click_on "Destroy this street", match: :first

    assert_text "Street was successfully destroyed"
  end
end
