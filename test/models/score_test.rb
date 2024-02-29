# == Schema Information
#
# Table name: scores
#
#  id             :uuid             not null, primary key
#  scoreValue     :float
#  scoreable_type :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  data_source_id :uuid             not null
#  scoreable_id   :uuid
#
# Indexes
#
#  index_scores_on_data_source_id  (data_source_id)
#  index_scores_on_scoreable_id    (scoreable_id)
#
# Foreign Keys
#
#  fk_rails_...  (data_source_id => data_sources.id)
#
require "test_helper"

class ScoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
