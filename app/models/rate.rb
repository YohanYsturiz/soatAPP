class Rate < ActiveRecord::Base
    belongs_to :classification
    belongs_to :typeclassification
end
