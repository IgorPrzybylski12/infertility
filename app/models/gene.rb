# == Schema Information
#
# Table name: genes
#
#  id                :uuid             not null, primary key
#  chromosome_number :integer
#  description       :text
#  localization      :text
#  name              :text
#  position          :float
#  position0         :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  poly_variant_id   :uuid
#
# Indexes
#
#  index_genes_on_poly_variant_id  (poly_variant_id)
#
# Foreign Keys
#
#  fk_rails_...  (poly_variant_id => poly_variants.id)
#
class Gene < ApplicationRecord
    belongs_to :poly_variant
    has_many :gene_products
    has_many :scores, as: :scoreable

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
