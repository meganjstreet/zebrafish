class RenameDisplayTitleAndDisplaySubtitleInProjects < ActiveRecord::Migration[7.2]
  def change
    rename_column :projects, :display_title, :title
    rename_column :projects, :display_subtitle, :subtitle
  end
end
