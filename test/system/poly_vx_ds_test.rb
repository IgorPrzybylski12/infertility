require "application_system_test_case"

class PolyVxDsTest < ApplicationSystemTestCase
  setup do
    @poly_vx_d = poly_vx_ds(:one)
  end

  test "visiting the index" do
    visit poly_vx_ds_url
    assert_selector "h1", text: ""
  end

  test "should create connection" do
    visit poly_vx_ds_url
    click_on "New connection"

    fill_in "Score", with: @poly_vx_d.score
    click_on "Create connection"

    assert_text "connection was successfully created"
    click_on "Back"
  end

  test "should update connection" do
    visit poly_vx_d_url(@poly_vx_d)
    click_on "Edit this connection", match: :first

    fill_in "Score", with: @poly_vx_d.score
    click_on "Update connection"

    assert_text "connection was successfully updated"
    click_on "Back"
  end

  test "should destroy connection" do
    visit poly_vx_d_url(@poly_vx_d)
    click_on "Destroy this connection", match: :first

    assert_text "connection was successfully destroyed"
  end
end
