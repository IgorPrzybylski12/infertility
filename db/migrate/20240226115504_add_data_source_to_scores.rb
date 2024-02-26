class AddDataSourceToScores < ActiveRecord::Migration[7.1]
  def change
    add_reference :scores, :data_source, null: false, foreign_key: true, type: :uuid
  end
end
