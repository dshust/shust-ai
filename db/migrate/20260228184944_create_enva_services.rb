class CreateEnvaServices < ActiveRecord::Migration[8.1]
  def change
    create_table :enva_services do |t|
      t.string :name
      t.text :prompt
      t.text :generated_html
      t.boolean :published
      t.string :emoji

      t.timestamps
    end
  end
end
