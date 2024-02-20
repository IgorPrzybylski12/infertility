require "application_system_test_case"

class DisordersTest < ApplicationSystemTestCase
  setup do
    @disorder = disorders(:one)
  end

  test "visiting the index" do
    visit disorders_url
    assert_selector "h1", text: "Disorders"
  end

  test "should create disorder" do
    visit disorders_url
    click_on "New disorder"

    fill_in "Description", with: @disorder.description
    fill_in "Gender", with: @disorder.gender
    fill_in "Name", with: @disorder.name
    click_on "Create Disorder"

    assert_text "Disorder was successfully created"
    click_on "Back"
  end

  test "should update Disorder" do
    visit disorder_url(@disorder)
    click_on "Edit this disorder", match: :first

    fill_in "Description", with: @disorder.description
    fill_in "Gender", with: @disorder.gender
    fill_in "Name", with: @disorder.name
    click_on "Update Disorder"

    assert_text "Disorder was successfully updated"
    click_on "Back"
  end

  test "should destroy Disorder" do
    visit disorder_url(@disorder)
    click_on "Destroy this disorder", match: :first

    assert_text "Disorder was successfully destroyed"
  end
end
