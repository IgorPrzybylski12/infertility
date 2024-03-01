class RemoveNameFromGeneProducts < ActiveRecord::Migration[7.1]
  def change
    remove_column :gene_products, :name
  end
end
