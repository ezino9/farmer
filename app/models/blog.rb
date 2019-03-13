class Blog < ApplicationRecord

    belongs_to :category

    has_attached_file :coverpicture, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :coverpicture, content_type: /\Aimage\/.*\z/

    validates_presence_of :title
    validates_presence_of :body
    
end
