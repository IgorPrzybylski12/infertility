require "test_helper"

class DsAuthorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ds_author = ds_authors(:one)
  end

  test "should get index" do
    get ds_authors_url
    assert_response :success
  end

  test "should get new" do
    get new_ds_author_url
    assert_response :success
  end

  test "should create ds_author" do
    assert_difference("DsAuthor.count") do
      post ds_authors_url, params: { ds_author: { fullname: @ds_author.fullname } }
    end

    assert_redirected_to ds_author_url(DsAuthor.last)
  end

  test "should show ds_author" do
    get ds_author_url(@ds_author)
    assert_response :success
  end

  test "should get edit" do
    get edit_ds_author_url(@ds_author)
    assert_response :success
  end

  test "should update ds_author" do
    patch ds_author_url(@ds_author), params: { ds_author: { fullname: @ds_author.fullname } }
    assert_redirected_to ds_author_url(@ds_author)
  end

  test "should destroy ds_author" do
    assert_difference("DsAuthor.count", -1) do
      delete ds_author_url(@ds_author)
    end

    assert_redirected_to ds_authors_url
  end
end
