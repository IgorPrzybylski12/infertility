class CreatePolyVxDs < ActiveRecord::Migration[7.1]
  def change
    create_table :poly_vx_ds, id: :uuid do |t|
      t.float :score

      t.timestamps
    end
  end
end
