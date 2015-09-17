class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :tob
  belongs_to :branch
  has_many   :product_images
  has_one    :property
  
  validates :name, presence: true , length: {minimum: 3, maximum: 80}
  validates :sku, presence: true, length: {minimum: 3, maximum: 20},
                format: {with: /\A\S+\Z/}
  validates :price, presence: true , numericality: {
                    greater_than_or_equal_to: 0}
  validates :qty, presence: true, numericality: { only_integer: true,
                    greater_than_or_equal_to: 0}
  validates :code, presence: true, length: {maximum: 20}

  # validates :condition, presence: true#string
  #:user_id,:tob_id,:branch_id,:category_id,:name,:sku,
  #:price,:qty,:status,:code,:condition,:discount,:keyword
end
