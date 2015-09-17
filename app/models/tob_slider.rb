class TobSlider < ActiveRecord::Base
  # :tob_id,:title,:description,:url,:image
  belongs_to :tob

  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, length: {maximum: 100}

  mount_uploader :image, SliderUploader

  validate  :image_size

  def image_size
    if image.size > 5.megabytes
      errors.add(:image, "should be less than 5MB")
    end
  end
end
