class Paper < ApplicationRecord
    validates :title, :venue, :year, presence: true
    validates :year, numericality: { only_integer: true }
    has_and_belongs_to_many :authors

    def self.created_at(time)
        where("year = ?", time)
    end
end
