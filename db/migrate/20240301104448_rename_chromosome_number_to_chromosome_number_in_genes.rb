class Renamechromosome_numberTochromosome_numberInGenes < ActiveRecord::Migration[7.1]
  def change
    rename_column :genes, :chromosome_number, :chromosome_number
  end
end
