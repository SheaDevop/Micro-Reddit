class Link < ApplicationRecord
  validates :title, presence: true, length: {in: 10..50}
  validates :body, presence: true, length: {in: 50..1500}
  belongs_to :user
  has_many :comments, dependent: :destroy
end
