class Post < ApplicationRecord
  # id topic author_id buyer_id
  belongs_to :author_user, :class_name => "User"
  belongs_to :buyer_user, :class_name => "User", :optional => true
  validates :title, :length => { in: 5..30}
  validates :description, :presence => true
  validates :price, :presence => true

  def self.by_status(status)
    case status
    when :available
      where(:buyer_user => nil)
    when :purchased
      where.not(:buyer_user => nil)
    end
  end

  def accepted_by(user)
    self.update(:buyer_user => user)
  end

  def accepted?
    true if buyer_user
  end

end

