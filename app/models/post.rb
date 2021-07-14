class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
    belongs_to :user
    has_many :images, dependent: :destroy

    # creates a global array of acceptable categories
    def self.categories
        ["Furniture", "Books", "Other"]
    end 
end
