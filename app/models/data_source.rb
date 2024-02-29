# == Schema Information
#
# Table name: data_sources
#
#  id                   :uuid             not null, primary key
#  data_sourceable_type :string
#  ds_authors_ids       :uuid             default([]), is an Array
#  file_path            :string
#  refNumber            :string
#  title                :text
#  type                 :text
#  url                  :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  data_sourceable_id   :bigint
#
# Indexes
#
#  index_data_sources_on_data_sourceable  (data_sourceable_type,data_sourceable_id)
#
class DataSource < ApplicationRecord
    has_many :ds_authors
    has_one :score

    self.inheritance_column = :my_type_column
end
