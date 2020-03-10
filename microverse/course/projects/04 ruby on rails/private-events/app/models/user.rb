class User < ApplicationRecord
  attr_accessor :remember_token

  has_many :events_as_host, foreign_key: :host_id, class_name: 'Event'
  has_many :invites
  has_many :events_as_guest, through: :invites, source: :event

  default_scope -> { order(created_at: :desc) }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end
