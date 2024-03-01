# == Schema Information
#
# Table name: scoring_machines
#
#  id               :uuid             not null, primary key
#  name             :text
#  numeric_value    :integer
#  perceptual_value :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class ScoringMachine < ApplicationRecord
    has_many :poly_vx_d
    has_many :scores, as: :scoreable
end
