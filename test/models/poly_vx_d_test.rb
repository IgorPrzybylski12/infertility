# == Schema Information
#
# Table name: poly_vx_ds
#
#  id                 :uuid             not null, primary key
#  score              :float
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  disorder_id        :uuid
#  poly_variant_id    :uuid
#  scoring_machine_id :uuid
#
# Indexes
#
#  index_poly_vx_ds_on_disorder_id         (disorder_id)
#  index_poly_vx_ds_on_poly_variant_id     (poly_variant_id)
#  index_poly_vx_ds_on_scoring_machine_id  (scoring_machine_id)
#
# Foreign Keys
#
#  fk_rails_...  (disorder_id => disorders.id)
#  fk_rails_...  (poly_variant_id => poly_variants.id)
#  fk_rails_...  (scoring_machine_id => scoring_machines.id)
#
require "test_helper"

class PolyVxDTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
