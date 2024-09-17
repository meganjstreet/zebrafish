class ChangeFeaturedColumnNameInProjects < ActiveRecord::Migration[7.2]
  def change
    rename_column :projects, :featured?, :featured
  end
end
