class AddPolymorphicToDataSource < ActiveRecord::Migration[7.1]
  def change
    add_reference :data_sources, :data_sourceable, polymorphic: true, index: true
  end
end
