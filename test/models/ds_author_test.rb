# == Schema Information
#
# Table name: ds_authors
#
#  id             :uuid             not null, primary key
#  data_source    :uuid
#  fullname       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  data_source_id :uuid
#
require "test_helper"

class DsAuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
