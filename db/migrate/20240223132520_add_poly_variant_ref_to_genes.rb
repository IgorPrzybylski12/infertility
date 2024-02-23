class AddPolyVariantRefToGenes < ActiveRecord::Migration[7.1]
  def change
    add_reference :genes, :poly_variant, foreign_key: true, type: :uuid
  end
end
