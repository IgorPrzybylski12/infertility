require "test_helper"

class PolyVxDsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poly_vx_d = poly_vx_ds(:one)
  end

  test "should get index" do
    get poly_vx_ds_url
    assert_response :success
  end

  test "should get new" do
    get new_poly_vx_d_url
    assert_response :success
  end

  test "should create poly_vx_d" do
    assert_difference("PolyVxD.count") do
      post poly_vx_ds_url, params: { poly_vx_d: { score: @poly_vx_d.score } }
    end

    assert_redirected_to poly_vx_d_url(PolyVxD.last)
  end

  test "should show poly_vx_d" do
    get poly_vx_d_url(@poly_vx_d)
    assert_response :success
  end

  test "should get edit" do
    get edit_poly_vx_d_url(@poly_vx_d)
    assert_response :success
  end

  test "should update poly_vx_d" do
    patch poly_vx_d_url(@poly_vx_d), params: { poly_vx_d: { score: @poly_vx_d.score } }
    assert_redirected_to poly_vx_d_url(@poly_vx_d)
  end

  test "should destroy poly_vx_d" do
    assert_difference("PolyVxD.count", -1) do
      delete poly_vx_d_url(@poly_vx_d)
    end

    assert_redirected_to poly_vx_ds_url
  end
end
