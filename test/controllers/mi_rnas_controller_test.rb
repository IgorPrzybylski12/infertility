require "test_helper"

class MiRnasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mi_rna = mi_rnas(:one)
  end

  test "should get index" do
    get mi_rnas_url
    assert_response :success
  end

  test "should get new" do
    get new_mi_rna_url
    assert_response :success
  end

  test "should create mi_rna" do
    assert_difference("MiRna.count") do
      post mi_rnas_url, params: { mi_rna: { description: @mi_rna.description, name: @mi_rna.name } }
    end

    assert_redirected_to mi_rna_url(MiRna.last)
  end

  test "should show mi_rna" do
    get mi_rna_url(@mi_rna)
    assert_response :success
  end

  test "should get edit" do
    get edit_mi_rna_url(@mi_rna)
    assert_response :success
  end

  test "should update mi_rna" do
    patch mi_rna_url(@mi_rna), params: { mi_rna: { description: @mi_rna.description, name: @mi_rna.name } }
    assert_redirected_to mi_rna_url(@mi_rna)
  end

  test "should destroy mi_rna" do
    assert_difference("MiRna.count", -1) do
      delete mi_rna_url(@mi_rna)
    end

    assert_redirected_to mi_rnas_url
  end
end
