class Post < ApplicationRecord
  # id topic author_id buyer_id
  belongs_to :author_user, :class_name => "User"
  belongs_to :buyer_user, :class_name => "User", :optional => true
end

