class Renamepoly_frequencyTopoly_frequencynInPolyVariants < ActiveRecord::Migration[7.1]
  def change
    rename_column :poly_variants, :poly_frequency, :poly_frequency
  end
end
