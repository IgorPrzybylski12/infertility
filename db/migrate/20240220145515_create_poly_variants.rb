class CreatePolyVariants < ActiveRecord::Migration[7.1]
  def change
    create_table :poly_variants, id: :uuid do |t|
      t.text :name
      t.text :poly_frequency

      t.timestamps
    end
  end
end
