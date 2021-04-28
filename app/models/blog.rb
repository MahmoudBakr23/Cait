class Blog < ApplicationRecord
    validates :title, presence: true, length: {minimum:3, maximum:18}
    validates :body, presence: true, length: {minimum:18}
    
    has_attached_file :image,
    :storage => :cloudinary,
    :path => ':class/:id/:style/:filename'
    
    validates_attachment_content_type :image, content_type: ['image/jpg', 'image/jpeg', 'image/png'], presence: true
end
