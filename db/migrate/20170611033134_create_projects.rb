class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :image
      t.string :title
      t.string :content
      t.references :user

      t.timestamps
    end
  end
end
