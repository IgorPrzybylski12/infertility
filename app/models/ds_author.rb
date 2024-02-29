# == Schema Information
#
# Table name: ds_authors
#
#  id             :uuid             not null, primary key
#  data_source    :uuid
#  fullname       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  data_source_id :uuid
#
class DsAuthor < ApplicationRecord
    has_many :data_sources
end
