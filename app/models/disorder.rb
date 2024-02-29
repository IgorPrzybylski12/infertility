# == Schema Information
#
# Table name: disorders
#
#  id          :uuid             not null, primary key
#  description :text
#  gender      :string
#  name        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Disorder < ApplicationRecord
    has_many :poly_variants
    has_one :poly_vx_d
end
