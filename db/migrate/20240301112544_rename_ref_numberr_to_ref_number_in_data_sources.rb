class Renameref_numberrToref_numberInDataSources < ActiveRecord::Migration[7.1]
  def change
    rename_column :data_sources, :ref_number, :ref_number
  end
end
