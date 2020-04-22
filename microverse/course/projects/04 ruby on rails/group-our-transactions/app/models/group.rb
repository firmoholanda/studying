class Group < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'

  has_many :projects_groups
  has_many :projects, -> { distinct }, through: :projects_groups, dependent: :destroy

  before_save { self.name = name.downcase }
  validates :name, presence: true, case_sensitive: false
end
