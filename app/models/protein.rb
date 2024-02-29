# == Schema Information
#
# Table name: proteins
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
#  index_proteins_on_gene_product_id  (gene_product_id)
#
# Foreign Keys
#
#  fk_rails_...  (gene_product_id => gene_products.id)
#
class Protein < ApplicationRecord
    belongs_to :gene_product
end
