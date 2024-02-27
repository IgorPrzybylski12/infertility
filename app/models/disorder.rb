class Disorder < ApplicationRecord
    has_many :poly_variants
    has_one :poly_vx_d
end
