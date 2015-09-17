class User < ActiveRecord::Base
  # :name,:role,:image
  has_one :user_contact, dependent: :destroy
  has_many :user_tobs, dependent: :destroy
  has_many :rates, dependent: :destroy
  has_many :review, dependent: :destroy
  has_many :wish_lists, dependent: :destroy

  has_one :address, through: :user_contact
  has_many :tobs, through: :user_tobs
  # accepts_nested_attributes_for  :address, allow_destroy: true
  # accepts_nested_attributes_for  :user_contact, allow_destroy: true

  validates :name, presence: true, length: {minimum: 3, maximum: 50}
end
