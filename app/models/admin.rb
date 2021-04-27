class Admin < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 16 }
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, uniqueness: true, length: {minimum:8}

    has_attached_file :image,
        :storage => :cloudinary,
        :path => ':class/:id/:style/:filename'
    validates_attachment_content_type :image, content_type: ['image/jpg', 'image/jpeg', 'image/png']
end
