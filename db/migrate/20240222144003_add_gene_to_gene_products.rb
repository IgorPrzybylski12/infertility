class AddGeneToGeneProducts < ActiveRecord::Migration[7.1]
  def change
    add_reference :gene_products, :gene, null: false, foreign_key: true, type: :uuid
  end
end
