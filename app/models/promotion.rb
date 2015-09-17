class Promotion < ActiveRecord::Base
  #:image,:started_at,:endded_at
  validates :description, length: {maximum: 100}
  validates :title, presence: true, length: {minimum: 5, maximum: 40}
  URL_VALID = /(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?/
  validates :url, presence: true, format: {with: URL_VALID},
              length: {minimum: 8, maximum: 150}
end
