# == Schema Information
#
# Table name: mi_rnas
#
#  id              :uuid             not null, primary key
#  description     :text
#  name            :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  gene_product_id :uuid
#
# Indexes
#
#  index_mi_rnas_on_gene_product_id  (gene_product_id)
#
# Foreign Keys
#
#  fk_rails_...  (gene_product_id => gene_products.id)
#
class MiRna < ApplicationRecord
    belongs_to :gene_product

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
