class DataSource < ApplicationRecord
    has_many :ds_authors
    belongs_to :data_sourceable, polymorphic: true

    self.inheritance_column = :my_type_column
end
