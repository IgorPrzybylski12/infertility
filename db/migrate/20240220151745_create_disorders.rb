class CreateDisorders < ActiveRecord::Migration[7.1]
  def change
    create_table :disorders, id: :uuid do |t|
      t.text :name
      t.text :description
      t.string :gender

      t.timestamps
    end
  end
end
