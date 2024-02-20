require "application_system_test_case"

class MiRnasTest < ApplicationSystemTestCase
  setup do
    @mi_rna = mi_rnas(:one)
  end

  test "visiting the index" do
    visit mi_rnas_url
    assert_selector "h1", text: "Mi rnas"
  end

  test "should create mi rna" do
    visit mi_rnas_url
    click_on "New mi rna"

    fill_in "Description", with: @mi_rna.description
    fill_in "Name", with: @mi_rna.name
    click_on "Create Mi rna"

    assert_text "Mi rna was successfully created"
    click_on "Back"
  end

  test "should update Mi rna" do
    visit mi_rna_url(@mi_rna)
    click_on "Edit this mi rna", match: :first

    fill_in "Description", with: @mi_rna.description
    fill_in "Name", with: @mi_rna.name
    click_on "Update Mi rna"

    assert_text "Mi rna was successfully updated"
    click_on "Back"
  end

  test "should destroy Mi rna" do
    visit mi_rna_url(@mi_rna)
    click_on "Destroy this mi rna", match: :first

    assert_text "Mi rna was successfully destroyed"
  end
end
