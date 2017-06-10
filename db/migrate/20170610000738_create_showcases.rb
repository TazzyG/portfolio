class CreateShowcases < ActiveRecord::Migration[5.0]
  def change
    create_table :showcases do |t|
      t.string :image
      t.references :user, foreign_key: true
      t.string :title
      t.string :credit
      t.string :heading
      t.string :sub_heading
      t.text :content
      t.string :reference_info

      t.timestamps
    end
  end
end
