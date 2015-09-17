class Rate < ActiveRecord::Base
  # :user_id,:product_id, :count
  belongs_to :user
  belongs_to :product

  validates :count, presence: true, numericality: { only_integer: true,
                    greater_than_or_equal_to: 0,
                    less_than_or_equal_to: 5 }
end
