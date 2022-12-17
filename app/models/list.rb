class List < ApplicationRecord
  has_one_attached :image

  #以下追加
  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true
end
