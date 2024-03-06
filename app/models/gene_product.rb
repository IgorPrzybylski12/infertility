# == Schema Information
#
# Table name: gene_products
#
#  id         :uuid             not null, primary key
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  gene_id    :uuid             not null
#
# Indexes
#
#  index_gene_products_on_gene_id  (gene_id)
#
# Foreign Keys
#
#  fk_rails_...  (gene_id => genes.id)
#
class GeneProduct < ApplicationRecord
    belongs_to :gene
    has_one :protein
    has_one :mi_rna

    self.inheritance_column = :my_type_column


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
