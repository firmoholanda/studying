class Project < ApplicationRecord
  belongs_to :author, class_name: 'User'

  has_many :projects_groups
  has_many :groups, -> { distinct }, through: :projects_groups

  validates :name, presence: true
  validates :hours, presence: true, numericality: { only_integer: true }

  default_scope { order(created_at: :desc) }
  scope :no_group, -> { where(group_id: nil) }

  def self.groups(user)
    where('project = ? AND group_ids = ?', user)
  end
end
