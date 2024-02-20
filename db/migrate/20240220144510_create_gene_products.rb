class CreateGeneProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :gene_products, id: :uuid do |t|
      t.text :name

      t.timestamps
    end
  end
end
