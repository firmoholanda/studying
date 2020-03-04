class User < ApplicationRecord
  attr_accessor :remember_token
  before_create :create_token

  has_many :posts

  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  # create user token
  def create_token
    self.remember_token = Digest::SHA1.hexdigest(SecureRandom.urlsafe_base64.to_s)
  end
end
