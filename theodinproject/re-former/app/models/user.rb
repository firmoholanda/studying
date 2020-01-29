class User < ApplicationRecord
  validates :username, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 320 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, presence: true, :confirmation: true, length: {:within => 6..30}, :password_requirements_are_met

  def password_requirements_are_met
    rules = {
      " must contain at least one lowercase letter"  => /[a-z]+/,
      " must contain at least one uppercase letter"  => /[A-Z]+/,
      " must contain at least one digit"             => /\d+/,
      " must contain at least one special character" => /[^A-Za-z0-9]+/
    }
    rules.each do |message, regex|
      errors.add( :password, message ) unless password.match( regex )
    end
  end

end
