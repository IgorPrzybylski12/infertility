class PolyVariant < ApplicationRecord
    has_many :genes
    has_many :disorders
    has_many :scores, as: :scoreable

    def self.ransackable_attributes(auth_object = nil)
        %w[name polyFrequency]
      end
    
      def self.ransackable_associations(auth_object = nil)
        []
      end
end
