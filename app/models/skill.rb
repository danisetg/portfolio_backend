class Skill < ApplicationRecord
    belongs_to :group
    validates :name, :percent, presence: true
end
