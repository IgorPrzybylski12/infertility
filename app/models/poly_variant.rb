class PolyVariant < ApplicationRecord
    has_many :genes
    has_many :disorders
    has_many :scores, as: :scoreable

end
