class CreateProjectInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :project_infos do |t|
      t.string :image
      t.references :project, foreign_key: true
      t.text :info

      t.timestamps
    end
  end
end
