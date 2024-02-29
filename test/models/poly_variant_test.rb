# == Schema Information
#
# Table name: poly_variants
#
#  id            :uuid             not null, primary key
#  name          :text
#  polyFrequency :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
require "test_helper"

class PolyVariantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
