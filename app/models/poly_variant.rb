# == Schema Information
#
# Table name: poly_variants
#
#  id            :uuid             not null, primary key
#  name          :text
#  polyFrequency :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class PolyVariant < ApplicationRecord
    has_many :genes
    has_many :disorders
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
