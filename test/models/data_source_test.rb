# == Schema Information
#
# Table name: data_sources
#
#  id                   :uuid             not null, primary key
#  data_sourceable_type :string
#  ds_authors_ids       :uuid             default([]), is an Array
#  file_path            :string
#  ref_number           :string
#  title                :text
#  type                 :text
#  url                  :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  data_sourceable_id   :bigint
#
# Indexes
#
#  index_data_sources_on_data_sourceable  (data_sourceable_type,data_sourceable_id)
#
require "test_helper"

class DataSourceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
