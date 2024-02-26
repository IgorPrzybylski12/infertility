class Score < ApplicationRecord
    belongs_to :scoreable, polymorphic: true
    belongs_to :data_source
end
