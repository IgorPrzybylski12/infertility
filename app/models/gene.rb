class Gene < ApplicationRecord
    #belongs_to :polyVariant
    has_many :geneProducts
    has_many :scores, as: :scoreable
end
