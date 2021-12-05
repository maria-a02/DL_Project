class Fair < ApplicationRecord
    has_many :opinions, dependent: :destroy
    has_many :users, through: :opinions

    def to_s
    name
    end
end
