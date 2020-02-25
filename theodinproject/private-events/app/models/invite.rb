class Invite < ActiveRecord::Base
  belongs_to :user
  belongs_to :event

  # check
  #validates :user_id, presence: true
  #validates :event_id, presence: true
end