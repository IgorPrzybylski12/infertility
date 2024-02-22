class PolyVxD < ApplicationRecord
    has_many :scoring_machines
    has_many :data_sources, as: :data_sourceable
end
