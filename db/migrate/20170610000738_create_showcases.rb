class CreateShowcases < ActiveRecord::Migration[5.0]
  def change
    create_table :showcases do |t|
      t.string :picture
      t.references :user, foreign_key: true
      t.string :title
      t.string :picture_credit

      t.timestamps
    end
  end
end
