class User < ApplicationRecord
  has_many :post_authors, :class_name => "Post", :foreign_key => "author_user_id"
  has_many :post_buyers, :class_name => "Post", :foreign_key => "buyer_user_id"
end
