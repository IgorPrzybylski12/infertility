class CreateScoringMachines < ActiveRecord::Migration[7.1]
  def change
    create_table :scoring_machines, id: :uuid do |t|
      t.text :name
      t.integer :numeric_value
      t.integer :perceptual_value

      t.timestamps
    end
  end
end
