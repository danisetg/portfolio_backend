class Labor < ApplicationRecord
    enum :type, [ :study, :work ]
end
