class GeneProduct < ApplicationRecord
    has_one :gene
    has_many :proteins
    has_many :mi_rnas
end
