class User < ApplicationRecord
    has_many :links, dependent: :destroy
    has_many :comments, dependent: :destroy
    validates :name, presence: true, length: {in: 3..12}, uniqueness: { case_sensitive: true }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
    validates :password, presence:true, length: {in: 6..20}
end
