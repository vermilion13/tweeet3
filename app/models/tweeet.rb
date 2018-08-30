class Tweeet < ApplicationRecord
    validates :content, presence: true
    validates :content, length: { in: 1..140 } 

    has_many :favorites, dependent: :destroy
    has_many :favorite_users, through: :favorites, source: :user
    
    mount_uploader :image, ImageUploader
end
