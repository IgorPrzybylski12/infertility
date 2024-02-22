class Gene < ApplicationRecord
    #belongs_to :polyVariant
    has_many :geneProducts
    has_many :data_sources, as: :data_sourceable
end
