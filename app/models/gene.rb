class Gene < ApplicationRecord
    belongs_to :poly_variant
    has_many :gene_products
    has_many :scores, as: :scoreable
end
