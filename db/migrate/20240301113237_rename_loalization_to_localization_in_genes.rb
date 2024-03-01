class RenamelocalizationToLocalizationInGenes < ActiveRecord::Migration[7.1]
  def change
    rename_column :genes, :localization, :localization
  end
end
