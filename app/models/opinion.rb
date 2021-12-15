class Opinion < ApplicationRecord
    belongs_to :user
    belongs_to :fair

    ratyrate_rateable :rating

end
