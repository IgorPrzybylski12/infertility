class DataSource < ApplicationRecord
    has_many :ds_authors

    self.inheritance_column = :my_type_column
end
