class ChangeColumnPositionInGene < ActiveRecord::Migration[7.1]
  def change
    change_column :genes, :position, :float
  end
end
