class CreateDataSources < ActiveRecord::Migration[7.1]
  def change
    create_table :data_sources, id: :uuid do |t|
      t.text :type
      t.text :title
      t.string :refNumber
      t.text :url
      t.string :file_path

      t.timestamps
    end
  end
end
