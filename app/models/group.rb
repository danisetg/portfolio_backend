class Group < ApplicationRecord
    has_many :skills
    serialize :skills
end
