class ChangeProjectsColumnType < ActiveRecord::Migration[5.2]
  def change
    change_column :projects, :hours, :integer
  end
end
