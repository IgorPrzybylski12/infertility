class GeneProduct < ApplicationRecord
    has_one :gene
    has_many :protein
    has_many :mi_rna

    self.inheritance_column = :my_type_column
end
