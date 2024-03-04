# == Schema Information
#
# Table name: genes
#
#  id                :uuid             not null, primary key
#  chromosome_number :integer
#  description       :text
#  localization      :text
#  name              :text
#  position          :float
#  position0         :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  poly_variant_id   :uuid
#
# Indexes
#
#  index_genes_on_poly_variant_id  (poly_variant_id)
#
# Foreign Keys
#
#  fk_rails_...  (poly_variant_id => poly_variants.id)
#
require "test_helper"

class GeneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
