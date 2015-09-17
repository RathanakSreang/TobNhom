class Property < ActiveRecord::Base
  belongs_to :product

  validates :description, presence: true#format  
  # validates :fields, presence: true#format

  # :product_id, :description,:fields
end
