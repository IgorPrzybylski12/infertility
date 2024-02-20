require "application_system_test_case"

class PolyVariantsTest < ApplicationSystemTestCase
  setup do
    @poly_variant = poly_variants(:one)
  end

  test "visiting the index" do
    visit poly_variants_url
    assert_selector "h1", text: "Poly variants"
  end

  test "should create poly variant" do
    visit poly_variants_url
    click_on "New poly variant"

    fill_in "Name", with: @poly_variant.name
    fill_in "Polyfrequency", with: @poly_variant.polyFrequency
    click_on "Create Poly variant"

    assert_text "Poly variant was successfully created"
    click_on "Back"
  end

  test "should update Poly variant" do
    visit poly_variant_url(@poly_variant)
    click_on "Edit this poly variant", match: :first

    fill_in "Name", with: @poly_variant.name
    fill_in "Polyfrequency", with: @poly_variant.polyFrequency
    click_on "Update Poly variant"

    assert_text "Poly variant was successfully updated"
    click_on "Back"
  end

  test "should destroy Poly variant" do
    visit poly_variant_url(@poly_variant)
    click_on "Destroy this poly variant", match: :first

    assert_text "Poly variant was successfully destroyed"
  end
end
