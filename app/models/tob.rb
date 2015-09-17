class Tob < ActiveRecord::Base

  has_one :tob_contact, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :tob_sliders, dependent: :destroy
  has_many :user_tobs, dependent: :destroy

  has_many :users, through: :user_tobs
  has_one :address, through: :tob_contact, dependent: :destroy
  
  validates :name, presence: true, length: {minimum: 3, maximum: 40}
  validates :domain, presence: true, uniqueness: true,
                format: {with: /\A\S+\Z/},
                length: {minimum: 3, maximum: 10}
  validates :barcode,presence: true, uniqueness: true,
                format: {with: /\A\S+\Z/},
                length: {minimum: 1, maximum: 4}
  # validates :status, presence: true#boolean
  validates :description, presence: true, length: {maximum: 240}
  validates :key, presence: true, uniqueness: true, format: {with: /\A\S+\Z/}
  # :name,:url,:status,:description,:started_at,:expired_at,:key

  mount_uploader :logo, TobLogoUploader

  validate  :logo_size

  def logo_size
    if logo.size > 1.megabytes
      errors.add(:logo, "should be less than 5MB")
    end
  end
end
