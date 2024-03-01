require "application_system_test_case"

class GenesTest < ApplicationSystemTestCase
  setup do
    @gene = genes(:one)
  end

  test "visiting the index" do
    visit genes_url
    assert_selector "h1", text: "Genes"
  end

  test "should create gene" do
    visit genes_url
    click_on "New gene"

    fill_in "chromosome_number", with: @gene.chromosome_number
    fill_in "Description", with: @gene.description
    fill_in "Loalization", with: @gene.loalization
    fill_in "Name", with: @gene.name
    fill_in "Position", with: @gene.position
    click_on "Create Gene"

    assert_text "Gene was successfully created"
    click_on "Back"
  end

  test "should update Gene" do
    visit gene_url(@gene)
    click_on "Edit this gene", match: :first

    fill_in "chromosome_number", with: @gene.chromosome_number
    fill_in "Description", with: @gene.description
    fill_in "Loalization", with: @gene.loalization
    fill_in "Name", with: @gene.name
    fill_in "Position", with: @gene.position
    click_on "Update Gene"

    assert_text "Gene was successfully updated"
    click_on "Back"
  end

  test "should destroy Gene" do
    visit gene_url(@gene)
    click_on "Destroy this gene", match: :first

    assert_text "Gene was successfully destroyed"
  end
end
