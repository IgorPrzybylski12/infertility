class CreateScores < ActiveRecord::Migration[7.1]
  def change
    create_table :scores, id: :uuid do |t|
      t.float :score_value

      t.timestamps
    end
  end
end
