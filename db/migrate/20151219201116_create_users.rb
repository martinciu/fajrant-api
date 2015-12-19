class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :toggl_id
      t.string :toggl_api_key
      t.integer :workspace_id
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
