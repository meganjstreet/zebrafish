class CreateProjects < ActiveRecord::Migration[7.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :campaign
      t.string :media_type
      t.string :client
      t.boolean :featured?
      t.string :details
      t.string :summary
      t.string :services_rendered
      t.string :director
      t.string :photographer
      t.string :videographer
      t.string :producer
      t.string :video_url
      t.references :category

      t.timestamps
    end
  end
end
