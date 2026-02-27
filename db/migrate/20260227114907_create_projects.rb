class CreateProjects < ActiveRecord::Migration[8.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :url
      t.string :screenshot_url
      t.string :tag
      t.integer :position

      t.timestamps
    end
  end
end
