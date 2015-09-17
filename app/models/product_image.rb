class ProductImage < ActiveRecord::Base
  # :product_id,:image
  belongs_to :product

  mount_uploader :image, ItemImageUploader

  validate  :image_size

  def image_size
    if image.size > 1.megabytes
      errors.add(:image, "should be less than 5MB")
    end
  end
end
