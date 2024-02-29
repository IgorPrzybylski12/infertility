# == Schema Information
#
# Table name: mi_rnas
#
#  id              :uuid             not null, primary key
#  description     :text
#  name            :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  gene_product_id :uuid
#
# Indexes
#
#  index_mi_rnas_on_gene_product_id  (gene_product_id)
#
# Foreign Keys
#
#  fk_rails_...  (gene_product_id => gene_products.id)
#
require "test_helper"

class MiRnaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
