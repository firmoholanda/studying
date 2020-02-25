class Event < ApplicationRecord
  belongs_to :host, class_name: "User"
  has_many :invites, dependent: :destroy
  has_many :guests, through: :invites, source: :user

  default_scope -> { order(event_date: :desc) }
  validates :name, presence: true
  validates :description, presence: true
  validates :event_date, presence: true
  validates :host_id, presence: true
end
