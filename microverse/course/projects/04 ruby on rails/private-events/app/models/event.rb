class Event < ApplicationRecord
  belongs_to :host, class_name: 'User'
  has_many :invites, dependent: :destroy
  has_many :guests, through: :invites, source: :user

  default_scope -> { order(event_date: :asc) }
  scope :upcoming, -> { where('event_date >= ?', Time.now) }
  scope :past, -> { where('event_date < ?', Time.now) }
end
