class User < ApplicationRecord
  attr_accessor :remember_token

  has_many :events_as_host, foreign_key: :host_id, class_name: "Event"
  has_many :invites
  has_many :events_as_guest, through: :invites, source: :event

  default_scope -> { order(created_at: :desc) }
  before_save { self.email.downcase! }
  validates :name, length: { maximum: 50 }
  
end
