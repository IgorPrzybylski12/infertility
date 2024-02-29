# == Schema Information
#
# Table name: gene_products
#
#  id         :uuid             not null, primary key
#  name       :text
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  gene_id    :uuid             not null
#
# Indexes
#
#  index_gene_products_on_gene_id  (gene_id)
#
# Foreign Keys
#
#  fk_rails_...  (gene_id => genes.id)
#
class GeneProduct < ApplicationRecord
    belongs_to :gene
    has_many :proteins
    has_many :mi_rnas

    self.inheritance_column = :my_type_column
end
