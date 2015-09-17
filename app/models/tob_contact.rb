class TobContact < ActiveRecord::Base
  # :email,:phone,:social,:tob_id,:address_id
  # :address1,:address2,:province,:latitude,:longitude
  belongs_to :tob

  EMAIL = /\A([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})\Z/
  validates :email, presence: true, format: {with: EMAIL},
                  length: {minimum: 8, maximum: 50}

  validates :phone, presence: true
end
