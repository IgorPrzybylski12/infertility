# == Schema Information
#
# Table name: disorders
#
#  id          :uuid             not null, primary key
#  description :text
#  gender      :string
#  name        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class DisorderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
