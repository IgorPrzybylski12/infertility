class CreateMiRnas < ActiveRecord::Migration[7.1]
  def change
    create_table :mi_rnas, id: :uuid do |t|
      t.text :name
      t.text :description

      t.timestamps
    end
  end
end
