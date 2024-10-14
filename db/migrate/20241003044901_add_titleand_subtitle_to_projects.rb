class AddTitleandSubtitleToProjects < ActiveRecord::Migration[7.2]
  def change
    add_column :projects, :display_title, :string
    add_column :projects, :display_subtitle, :string
  end
end
