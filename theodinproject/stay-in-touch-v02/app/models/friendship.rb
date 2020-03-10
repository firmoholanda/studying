class Friendship < ApplicationRecord
  belongs_to :active_friend, class_name: :User
  belongs_to :passive_friend, class_name: :User
end
