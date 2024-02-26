class AddDisorderAndPolyVariantToPolyVxDs < ActiveRecord::Migration[7.1]
  def change
    add_reference :poly_vx_ds, :disorder, foreign_key: true, type: :uuid
    add_reference :poly_vx_ds, :poly_variant, foreign_key: true, type: :uuid
  end
end
