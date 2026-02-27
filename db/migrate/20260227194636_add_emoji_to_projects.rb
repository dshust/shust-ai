class AddEmojiToProjects < ActiveRecord::Migration[8.1]
  def change
    add_column :projects, :emoji, :string
  end
end
