class AddLinkToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :link, :string
    add_column :projects, :site_name, :string
  end
end
