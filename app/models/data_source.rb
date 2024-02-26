class DataSource < ApplicationRecord
    has_many :ds_authors
    has_one :score

    self.inheritance_column = :my_type_column
end
