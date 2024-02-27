class PolyVxD < ApplicationRecord
    has_many :scoring_machines
    has_one :disorder
end
