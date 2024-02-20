require "application_system_test_case"

class DsAuthorsTest < ApplicationSystemTestCase
  setup do
    @ds_author = ds_authors(:one)
  end

  test "visiting the index" do
    visit ds_authors_url
    assert_selector "h1", text: "Ds authors"
  end

  test "should create ds author" do
    visit ds_authors_url
    click_on "New ds author"

    fill_in "Fullname", with: @ds_author.fullname
    click_on "Create Ds author"

    assert_text "Ds author was successfully created"
    click_on "Back"
  end

  test "should update Ds author" do
    visit ds_author_url(@ds_author)
    click_on "Edit this ds author", match: :first

    fill_in "Fullname", with: @ds_author.fullname
    click_on "Update Ds author"

    assert_text "Ds author was successfully updated"
    click_on "Back"
  end

  test "should destroy Ds author" do
    visit ds_author_url(@ds_author)
    click_on "Destroy this ds author", match: :first

    assert_text "Ds author was successfully destroyed"
  end
end
