class PolyVariant < ApplicationRecord
    has_many :genes
    has_many :disorders
    has_many :data_sources, as: :data_sourceable
end
