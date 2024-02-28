class PolyVxD < ApplicationRecord
    belongs_to :scoring_machine
    belongs_to :disorder
    belongs_to :poly_variant
end
