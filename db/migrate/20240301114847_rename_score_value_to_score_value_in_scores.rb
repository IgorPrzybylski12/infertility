class Renamescore_valueToscore_valueInScores < ActiveRecord::Migration[7.1]
  def change
    rename_column :scores, :score_value, :score_value
  end
end
