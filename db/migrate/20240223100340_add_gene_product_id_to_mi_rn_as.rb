class AddGeneProductIdToMiRnAs < ActiveRecord::Migration[7.1]
  def change
    add_reference :mi_rnas, :gene_product, foreign_key: true, type: :uuid
  end
end
