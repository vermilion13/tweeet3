class Favorite < ApplicationRecord

    belongs_to :user
    belongs_to :tweeet

end
