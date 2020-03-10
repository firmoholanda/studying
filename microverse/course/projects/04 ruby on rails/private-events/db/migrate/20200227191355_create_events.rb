class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :event_date
      t.references :host, index: true

      t.timestamps
    end
    add_foreign_key :events, :users, column: :host_id
  end
end
