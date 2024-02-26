class PolyVariant < ApplicationRecord
    has_many :genes
    has_many :disorders
end
