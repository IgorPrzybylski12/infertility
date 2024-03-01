require "test_helper"

class PolyVariantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poly_variant = poly_variants(:one)
  end

  test "should get index" do
    get poly_variants_url
    assert_response :success
  end

  test "should get new" do
    get new_poly_variant_url
    assert_response :success
  end

  test "should create poly_variant" do
    assert_difference("PolyVariant.count") do
      post poly_variants_url, params: { poly_variant: { name: @poly_variant.name, poly_frequency: @poly_variant.poly_frequency } }
    end

    assert_redirected_to poly_variant_url(PolyVariant.last)
  end

  test "should show poly_variant" do
    get poly_variant_url(@poly_variant)
    assert_response :success
  end

  test "should get edit" do
    get edit_poly_variant_url(@poly_variant)
    assert_response :success
  end

  test "should update poly_variant" do
    patch poly_variant_url(@poly_variant), params: { poly_variant: { name: @poly_variant.name, poly_frequency: @poly_variant.poly_frequency } }
    assert_redirected_to poly_variant_url(@poly_variant)
  end

  test "should destroy poly_variant" do
    assert_difference("PolyVariant.count", -1) do
      delete poly_variant_url(@poly_variant)
    end

    assert_redirected_to poly_variants_url
  end
end
