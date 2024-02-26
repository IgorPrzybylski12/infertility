class Score < ApplicationRecord
    belongs_to :scoreable, polymorphic: true
end
