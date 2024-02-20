class CreateScoringMachines < ActiveRecord::Migration[7.1]
  def change
    create_table :scoring_machines, id: :uuid do |t|
      t.text :name
      t.integer :numericValue
      t.integer :perceptualValue

      t.timestamps
    end
  end
end
