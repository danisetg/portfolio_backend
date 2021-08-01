class Skill < ApplicationRecord
    validates :name, :percent, presence: true
end
