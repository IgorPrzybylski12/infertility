class AddScoreableToScores < ActiveRecord::Migration[7.1]
  def change
    add_column :scores, :scoreable_type, :string
    add_column :scores, :scoreable_id, :uuid
    add_index :scores, :scoreable_id
  end
end
