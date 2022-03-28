class Post < ApplicationRecord
    validates :type_of_post, presence: true


    has_many :comments,
        class_name: :Comment,
        foreign_key: :post_id,
        primary_key: :id
end
