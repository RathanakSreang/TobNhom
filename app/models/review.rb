class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  validates :content, presence: true
  # :user_id,:product_id,:content
end
