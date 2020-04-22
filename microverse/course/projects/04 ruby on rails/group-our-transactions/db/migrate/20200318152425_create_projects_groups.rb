class CreateProjectsGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :projects_groups do |t|
      t.references :project, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
