class Micropost < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  mount_uploader :picture, PictureUploader
  validate :picture_size

  private

  # アップロードされた画像のサイズをバリテージョンする
  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end
end
