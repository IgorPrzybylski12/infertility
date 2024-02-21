require "application_system_test_case"

class PolyVxDsTest < ApplicationSystemTestCase
  setup do
    @poly_vx_d = poly_vx_ds(:one)
  end

  test "visiting the index" do
    visit poly_vx_ds_url
    assert_selector "h1", text: "Poly vx ds"
  end

  test "should create poly vx d" do
    visit poly_vx_ds_url
    click_on "New poly vx d"

    fill_in "Score", with: @poly_vx_d.score
    click_on "Create Poly vx d"

    assert_text "Poly vx d was successfully created"
    click_on "Back"
  end

  test "should update Poly vx d" do
    visit poly_vx_d_url(@poly_vx_d)
    click_on "Edit this poly vx d", match: :first

    fill_in "Score", with: @poly_vx_d.score
    click_on "Update Poly vx d"

    assert_text "Poly vx d was successfully updated"
    click_on "Back"
  end

  test "should destroy Poly vx d" do
    visit poly_vx_d_url(@poly_vx_d)
    click_on "Destroy this poly vx d", match: :first

    assert_text "Poly vx d was successfully destroyed"
  end
end
