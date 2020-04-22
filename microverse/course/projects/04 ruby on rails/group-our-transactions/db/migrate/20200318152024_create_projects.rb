class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :hours
      t.references :author, index: true

      t.timestamps
    end
    add_foreign_key :projects, :users, column: :author_id
  end
end
