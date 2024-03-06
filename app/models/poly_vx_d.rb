# == Schema Information
#
# Table name: poly_vx_ds
#
#  id                 :uuid             not null, primary key
#  score              :float
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  disorder_id        :uuid
#  poly_variant_id    :uuid
#  scoring_machine_id :uuid
#
# Indexes
#
#  index_poly_vx_ds_on_disorder_id         (disorder_id)
#  index_poly_vx_ds_on_poly_variant_id     (poly_variant_id)
#  index_poly_vx_ds_on_scoring_machine_id  (scoring_machine_id)
#
# Foreign Keys
#
#  fk_rails_...  (disorder_id => disorders.id)
#  fk_rails_...  (poly_variant_id => poly_variants.id)
#  fk_rails_...  (scoring_machine_id => scoring_machines.id)
#
class PolyVxD < ApplicationRecord
    belongs_to :scoring_machine
    belongs_to :disorder
    belongs_to :poly_variant

    # # `ransackable_attributes` by default returns all column names
    # # and any defined ransackers as an array of strings.
    # # For overriding with a whitelist array of strings.
    # #
    def self.ransackable_attributes(auth_object = nil)
        column_names + _ransackers.keys
    end

    # # `ransackable_associations` by default returns the names
    # # of all associations as an array of strings.
    # # For overriding with a whitelist array of strings.
    # #
    def self.ransackable_associations(auth_object = nil)
        reflect_on_all_associations.map { |a| a.name.to_s }
    end

    # `ransortable_attributes` by default returns the names
    # of all attributes available for sorting as an array of strings.
    # For overriding with a whitelist array of strings.
    #
    def self.ransortable_attributes(auth_object = nil)
        ransackable_attributes(auth_object)
    end
end
