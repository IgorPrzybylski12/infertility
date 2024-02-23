class AddTypeToGeneProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :gene_products, :type, :string
  end
end
