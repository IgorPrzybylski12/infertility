class AddGeneProductIdToProteins < ActiveRecord::Migration[7.1]
  def change
    add_reference :proteins, :gene_product, foreign_key: true, type: :uuid
  end
end
