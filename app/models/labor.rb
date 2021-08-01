class Labor < ApplicationRecord
    enum :type, [ :study, :work ]
    has_many :bulletpoints
    
    serialize :bulletpoints
end
