class Micropost < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: {maximum: 30}
  #validates :content, length: {maximum: 400}
end
