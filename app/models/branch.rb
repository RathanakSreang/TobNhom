class Branch < ActiveRecord::Base
  has_many :products
  
  validates :name, presence: true, length: {minimum: 3, maximum: 80}
  URL_VALID = /(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?/
  validates :url, presence: true, format: {with: URL_VALID},
              length: {minimum: 8, maximum: 150}
end
