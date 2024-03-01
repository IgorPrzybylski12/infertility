require "application_system_test_case"

class ScoringMachinesTest < ApplicationSystemTestCase
  setup do
    @scoring_machine = scoring_machines(:one)
  end

  test "visiting the index" do
    visit scoring_machines_url
    assert_selector "h1", text: "Scoring machines"
  end

  test "should create scoring machine" do
    visit scoring_machines_url
    click_on "New scoring machine"

    fill_in "Name", with: @scoring_machine.name
    fill_in "Numeric value", with: @scoring_machine.numeric_value
    fill_in "Perceptual value", with: @scoring_machine.perceptual_value
    click_on "Create Scoring machine"

    assert_text "Scoring machine was successfully created"
    click_on "Back"
  end

  test "should update Scoring machine" do
    visit scoring_machine_url(@scoring_machine)
    click_on "Edit this scoring machine", match: :first

    fill_in "Name", with: @scoring_machine.name
    fill_in "Numeric value", with: @scoring_machine.numeric_value
    fill_in "Perceptual value", with: @scoring_machine.perceptual_value
    click_on "Update Scoring machine"

    assert_text "Scoring machine was successfully updated"
    click_on "Back"
  end

  test "should destroy Scoring machine" do
    visit scoring_machine_url(@scoring_machine)
    click_on "Destroy this scoring machine", match: :first

    assert_text "Scoring machine was successfully destroyed"
  end
end
