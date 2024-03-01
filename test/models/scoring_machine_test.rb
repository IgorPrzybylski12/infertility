# == Schema Information
#
# Table name: scoring_machines
#
#  id               :uuid             not null, primary key
#  name             :text
#  numeric_value    :integer
#  perceptual_value :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require "test_helper"

class ScoringMachineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
