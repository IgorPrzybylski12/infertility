class Gene < ApplicationRecord
    belongs_to :polyVariant
    has_many :geneProducts
end
