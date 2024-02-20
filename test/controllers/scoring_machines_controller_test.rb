require "test_helper"

class ScoringMachinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scoring_machine = scoring_machines(:one)
  end

  test "should get index" do
    get scoring_machines_url
    assert_response :success
  end

  test "should get new" do
    get new_scoring_machine_url
    assert_response :success
  end

  test "should create scoring_machine" do
    assert_difference("ScoringMachine.count") do
      post scoring_machines_url, params: { scoring_machine: { name: @scoring_machine.name, numericValue: @scoring_machine.numericValue, perceptualValue: @scoring_machine.perceptualValue } }
    end

    assert_redirected_to scoring_machine_url(ScoringMachine.last)
  end

  test "should show scoring_machine" do
    get scoring_machine_url(@scoring_machine)
    assert_response :success
  end

  test "should get edit" do
    get edit_scoring_machine_url(@scoring_machine)
    assert_response :success
  end

  test "should update scoring_machine" do
    patch scoring_machine_url(@scoring_machine), params: { scoring_machine: { name: @scoring_machine.name, numericValue: @scoring_machine.numericValue, perceptualValue: @scoring_machine.perceptualValue } }
    assert_redirected_to scoring_machine_url(@scoring_machine)
  end

  test "should destroy scoring_machine" do
    assert_difference("ScoringMachine.count", -1) do
      delete scoring_machine_url(@scoring_machine)
    end

    assert_redirected_to scoring_machines_url
  end
end
