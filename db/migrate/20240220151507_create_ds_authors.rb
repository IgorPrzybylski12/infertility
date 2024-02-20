class CreateDsAuthors < ActiveRecord::Migration[7.1]
  def change
    create_table :ds_authors, id: :uuid do |t|
      t.string :fullname

      t.timestamps
    end
  end
end
