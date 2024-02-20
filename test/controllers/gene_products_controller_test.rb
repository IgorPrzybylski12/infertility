require "test_helper"

class GeneProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gene_product = gene_products(:one)
  end

  test "should get index" do
    get gene_products_url
    assert_response :success
  end

  test "should get new" do
    get new_gene_product_url
    assert_response :success
  end

  test "should create gene_product" do
    assert_difference("GeneProduct.count") do
      post gene_products_url, params: { gene_product: { name: @gene_product.name } }
    end

    assert_redirected_to gene_product_url(GeneProduct.last)
  end

  test "should show gene_product" do
    get gene_product_url(@gene_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_gene_product_url(@gene_product)
    assert_response :success
  end

  test "should update gene_product" do
    patch gene_product_url(@gene_product), params: { gene_product: { name: @gene_product.name } }
    assert_redirected_to gene_product_url(@gene_product)
  end

  test "should destroy gene_product" do
    assert_difference("GeneProduct.count", -1) do
      delete gene_product_url(@gene_product)
    end

    assert_redirected_to gene_products_url
  end
end
