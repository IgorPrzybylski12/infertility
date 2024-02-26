class AddDsAuthorsToDataSources < ActiveRecord::Migration[7.1]
  def change
    add_column :data_sources, :ds_authors_ids, :uuid, array: true, default: []
  end
end
