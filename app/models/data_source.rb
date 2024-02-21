class DataSource < ApplicationRecord
    self.inheritance_column = :my_type_column
end
