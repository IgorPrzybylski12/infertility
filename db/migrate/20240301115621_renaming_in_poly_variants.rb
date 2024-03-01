class RenamingInPolyVariants < ActiveRecord::Migration[7.1]
  def change
    rename_column :scoring_machines, :numeric_value, :numeric_value
    rename_column :scoring_machines, :perceptual_value, :perceptual_value
  end
end
