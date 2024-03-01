class CreateGenes < ActiveRecord::Migration[7.1]
  def change
    create_table :genes, id: :uuid do |t|
      t.text :name
      t.text :description
      t.integer :chromosome_number
      t.integer :position
      t.text :loalization

      t.timestamps
    end
  end
end
