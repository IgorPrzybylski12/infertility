require "application_system_test_case"

class GeneProductsTest < ApplicationSystemTestCase
  setup do
    @gene_product = gene_products(:one)
  end

  test "visiting the index" do
    visit gene_products_url
    assert_selector "h1", text: "Gene products"
  end

  test "should create gene product" do
    visit gene_products_url
    click_on "New gene product"

    fill_in "Name", with: @gene_product.name
    click_on "Create Gene product"

    assert_text "Gene product was successfully created"
    click_on "Back"
  end

  test "should update Gene product" do
    visit gene_product_url(@gene_product)
    click_on "Edit this gene product", match: :first

    fill_in "Name", with: @gene_product.name
    click_on "Update Gene product"

    assert_text "Gene product was successfully updated"
    click_on "Back"
  end

  test "should destroy Gene product" do
    visit gene_product_url(@gene_product)
    click_on "Destroy this gene product", match: :first

    assert_text "Gene product was successfully destroyed"
  end
end
