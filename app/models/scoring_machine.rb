class ScoringMachine < ApplicationRecord
    has_many :poly_vx_d
    has_many :scores, as: :scoreable
end
