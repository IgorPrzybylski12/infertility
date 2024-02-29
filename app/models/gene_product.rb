class GeneProduct < ApplicationRecord
    belongs_to :gene
    has_many :proteins
    has_many :mi_rnas

    self.inheritance_column = :my_type_column
end
